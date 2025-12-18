import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shaolin_planner_new/core/providers/supabase_provider.dart';
import 'package:shaolin_planner_new/features/routines/domain/routine.dart';

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
}
