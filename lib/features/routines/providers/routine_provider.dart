import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shaolin_planner_new/features/routines/data/routine_repository.dart';
import 'package:shaolin_planner_new/features/routines/domain/routine.dart';
import 'package:shaolin_planner_new/features/routines/domain/routine_ritual.dart';

part 'routine_provider.g.dart';

@riverpod
class RoutineNotifier extends _$RoutineNotifier {
  @override
  FutureOr<List<Routine>> build() {
    return _fetchRoutines();
  }

  Future<List<Routine>> _fetchRoutines() async {
    // The repository handles the complex join query
    return ref.read(routineRepositoryProvider).fetchRoutines();
  }

  // Future methods for adding/updating routines can go here
  Future<void> refresh() async {
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() => _fetchRoutines());
  }

  Future<void> reorderRituals(
    String routineId,
    int oldIndex,
    int newIndex,
  ) async {
    final previousState = state;
    if (oldIndex < newIndex) {
      newIndex -= 1;
    }

    final routines = state.value;
    if (routines == null) return;

    final routineIndex = routines.indexWhere((r) => r.id == routineId);
    if (routineIndex == -1) return;

    final routine = routines[routineIndex];
    final rituals = List<RoutineRitual>.from(routine.routinesRituals);
    final item = rituals.removeAt(oldIndex);
    rituals.insert(newIndex, item);

    // Re-assign orderNr based on new list position
    final updatedRituals = rituals.asMap().entries.map((entry) {
      return entry.value.copyWith(orderNr: entry.key);
    }).toList();

    final updatedRoutine = routine.copyWith(routinesRituals: updatedRituals);
    final updatedRoutines = List<Routine>.from(routines);
    updatedRoutines[routineIndex] = updatedRoutine;

    state = AsyncValue.data(updatedRoutines);

    try {
      await ref
          .read(routineRepositoryProvider)
          .updateRoutineRitualOrder(updatedRituals);
    } catch (e) {
      state = previousState;
      throw e;
    }
  }

  Future<void> addRitual(String routineId, String ritualId) async {
    // For adding, we'll just strictly call the repo then refresh for now to avoid
    // complex optimistic logic (need full Ritual object).
    // Or we could optimistically add if we had the Ritual object passed in.
    // Let's keep it simple: Repo -> Refresh.
    // The user requirement says "Optimistic Update: ... local Riverpod-state." for reordering.
    // For adding/removing, it suggests standard flow, but "UI/UX Verfeinerung" hints at smoothness.
    // Let's try to simple refresh first, as we need the joined Ritual data from DB usually.
    // Actually, we can fetch the requested ritual from RitualRepository if we want to be fancy,
    // but a quick refresh is safer and usually fast enough with Supabase.
    await ref
        .read(routineRepositoryProvider)
        .addRitualToRoutine(
          routineId: routineId,
          ritualId: ritualId,
          orderNr: 9999, // Trigger/Repo will handle cleanup
        );
    await refresh();
  }

  Future<void> removeRitual(String routineId, String ritualId) async {
    final previousState = state;
    final routines = state.value;
    if (routines != null) {
      final routineIndex = routines.indexWhere((r) => r.id == routineId);
      if (routineIndex != -1) {
        final routine = routines[routineIndex];
        final updatedRituals = routine.routinesRituals
            .where((rr) => rr.ritualId != ritualId)
            .toList();
        final updatedRoutine = routine.copyWith(
          routinesRituals: updatedRituals,
        );
        final updatedRoutines = List<Routine>.from(routines);
        updatedRoutines[routineIndex] = updatedRoutine;
        state = AsyncValue.data(updatedRoutines);
      }
    }

    try {
      await ref
          .read(routineRepositoryProvider)
          .removeRitualFromRoutine(routineId: routineId, ritualId: ritualId);
    } catch (e) {
      state = previousState;
      throw e;
    }
  }

  Future<void> updateDuration(
    String routineId,
    String ritualId,
    int newDuration,
  ) async {
    final previousState = state;
    final routines = state.value;
    if (routines != null) {
      final routineIndex = routines.indexWhere((r) => r.id == routineId);
      if (routineIndex != -1) {
        final routine = routines[routineIndex];
        final updatedRituals = routine.routinesRituals.map((rr) {
          if (rr.ritualId == ritualId) {
            return rr.copyWith(duration: newDuration);
          }
          return rr;
        }).toList();
        final updatedRoutine = routine.copyWith(
          routinesRituals: updatedRituals,
        );
        final updatedRoutines = List<Routine>.from(routines);
        updatedRoutines[routineIndex] = updatedRoutine;
        state = AsyncValue.data(updatedRoutines);
      }
    }

    try {
      await ref
          .read(routineRepositoryProvider)
          .updateRoutineRitualDuration(
            routineId: routineId,
            ritualId: ritualId,
            duration: newDuration,
          );
    } catch (e) {
      state = previousState;
      throw e;
    }
  }

  Future<void> createRoutine(String title, String description) async {
    await ref
        .read(routineRepositoryProvider)
        .createRoutine(title: title, description: description);
    // Refresh to show the new routine
    await refresh();
  }

  Future<void> deleteRoutine(String routineId) async {
    await ref.read(routineRepositoryProvider).deleteRoutine(routineId);
    await refresh();
  }
}
