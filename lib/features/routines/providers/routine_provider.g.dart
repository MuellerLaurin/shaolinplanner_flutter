// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'routine_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(RoutineNotifier)
const routineProvider = RoutineNotifierProvider._();

final class RoutineNotifierProvider
    extends $AsyncNotifierProvider<RoutineNotifier, List<Routine>> {
  const RoutineNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'routineProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$routineNotifierHash();

  @$internal
  @override
  RoutineNotifier create() => RoutineNotifier();
}

String _$routineNotifierHash() => r'85ed60182b0e0f2c8b01f20c4755ce762a1b65c4';

abstract class _$RoutineNotifier extends $AsyncNotifier<List<Routine>> {
  FutureOr<List<Routine>> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<AsyncValue<List<Routine>>, List<Routine>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<List<Routine>>, List<Routine>>,
              AsyncValue<List<Routine>>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
