import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shaolin_planner_new/core/providers/supabase_provider.dart';
import 'package:shaolin_planner_new/features/routines/domain/routine.dart';
import 'package:shaolin_planner_new/features/routines/domain/routine_ritual.dart';

part 'routine_repository.g.dart';

@riverpod
RoutineRepository routineRepository(Ref ref) {
  return RoutineRepository(ref.watch(supabaseProvider));
}

class RoutineRepository {
  final SupabaseClient _supabase;

  RoutineRepository(this._supabase);

  Future<List<Routine>> fetchRoutines() async {
    final response = await _supabase
        .from('routines')
        .select('*, routines_rituals(*, rituals(*))')
        .order(
          'order_nr',
          referencedTable: 'routines_rituals',
          ascending: true,
        );
    // Note: Ordering on nested resource can be tricky in PostgREST depending on version.
    // Usually it's .order('column', foreignTable: 'table').
    // Also sorting the routines themselves? .order('name')?

    final data = response as List<dynamic>;
    return data.map((json) => Routine.fromJson(json)).toList();
  }

  Future<void> updateRoutineRitualOrder(List<RoutineRitual> updatedList) async {
    // Batch update the order_nr for each item in the list
    for (final item in updatedList) {
      await _supabase
          .from('routines_rituals')
          .update({'order_nr': item.orderNr})
          .eq('routine_id', item.routineId)
          .eq('ritual_id', item.ritualId);
    }
  }

  Future<void> addRitualToRoutine({
    required String routineId,
    required String ritualId,
    int duration = 0,
    required int orderNr,
  }) async {
    final userId = _supabase.auth.currentUser?.id;
    if (userId == null) throw Exception('User not logged in');

    await _supabase.from('routines_rituals').insert({
      'routine_id': routineId,
      'ritual_id': ritualId,
      'duration': duration,
      'order_nr': orderNr,
      'user_id': userId,
    });
  }

  Future<void> removeRitualFromRoutine({
    required String routineId,
    required String ritualId,
  }) async {
    await _supabase
        .from('routines_rituals')
        .delete()
        .eq('routine_id', routineId)
        .eq('ritual_id', ritualId);
  }

  Future<void> updateRoutineRitualDuration({
    required String routineId,
    required String ritualId,
    required int duration,
  }) async {
    await _supabase
        .from('routines_rituals')
        .update({'duration': duration})
        .eq('routine_id', routineId)
        .eq('ritual_id', ritualId);
  }

  Future<void> createRoutine({
    required String title,
    required String description,
  }) async {
    final userId = _supabase.auth.currentUser?.id;
    if (userId == null) throw Exception('User not logged in');

    await _supabase.from('routines').insert({
      'user_id': userId,
      'title': title,
      'description': description,
    });
  }

  Future<void> deleteRoutine(String routineId) async {
    final userId = _supabase.auth.currentUser?.id;
    if (userId == null) throw Exception('User not logged in');

    await _supabase
        .from('routines')
        .delete()
        .eq('routine_id', routineId)
        .eq('user_id', userId); // Extra safety check
  }
}
