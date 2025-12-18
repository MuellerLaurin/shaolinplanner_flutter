import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shaolin_planner_new/features/routines/data/routine_repository.dart';
import 'package:shaolin_planner_new/features/routines/domain/routine.dart';

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
}
