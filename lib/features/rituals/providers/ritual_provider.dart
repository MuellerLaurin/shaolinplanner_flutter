import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shaolin_planner_new/core/providers/supabase_provider.dart';
import 'package:shaolin_planner_new/features/rituals/data/ritual_repository.dart';
import 'package:shaolin_planner_new/features/rituals/domain/ritual.dart';

part 'ritual_provider.g.dart';

@riverpod
RitualRepository ritualRepository(Ref ref) {
  final supabase = ref.watch(supabaseProvider);
  return RitualRepository(supabase);
}

@riverpod
class RitualList extends _$RitualList {
  @override
  Future<List<Ritual>> build() async {
    // Reload when supabase client changes implies auth change might happen but repo handles user check
    final repository = ref.watch(ritualRepositoryProvider);
    return repository.fetchRituals();
  }

  Future<void> addRitual(Ritual ritual) async {
    final previousState = state;
    // Optimistic update
    state = AsyncValue.data([ritual, ...?state.value]);

    try {
      final repository = ref.read(ritualRepositoryProvider);
      await repository.createRitual(ritual);
    } catch (e) {
      state = previousState;
      rethrow;
    }
  }

  Future<void> updateRitual(Ritual ritual) async {
    final previousState = state;
    // Optimistic update
    state = AsyncValue.data([
      for (final item in state.value ?? [])
        if (item.id == ritual.id) ritual else item,
    ]);

    try {
      final repository = ref.read(ritualRepositoryProvider);
      await repository.updateRitual(ritual);
    } catch (e) {
      state = previousState;
      rethrow;
    }
  }

  Future<void> deleteRitual(String ritualId) async {
    final previousState = state;
    // Optimistic update
    state = AsyncValue.data([
      for (final item in state.value ?? [])
        if (item.id != ritualId) item,
    ]);

    try {
      final repository = ref.read(ritualRepositoryProvider);
      await repository.deleteRitual(ritualId);
    } catch (e) {
      state = previousState;
      rethrow;
    }
  }
}
