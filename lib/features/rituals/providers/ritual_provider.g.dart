// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ritual_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(ritualRepository)
const ritualRepositoryProvider = RitualRepositoryProvider._();

final class RitualRepositoryProvider
    extends
        $FunctionalProvider<
          RitualRepository,
          RitualRepository,
          RitualRepository
        >
    with $Provider<RitualRepository> {
  const RitualRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'ritualRepositoryProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$ritualRepositoryHash();

  @$internal
  @override
  $ProviderElement<RitualRepository> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  RitualRepository create(Ref ref) {
    return ritualRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(RitualRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<RitualRepository>(value),
    );
  }
}

String _$ritualRepositoryHash() => r'58f1f618c11be04f1afc694b0c8519a3397c31fa';

@ProviderFor(RitualList)
const ritualListProvider = RitualListProvider._();

final class RitualListProvider
    extends $AsyncNotifierProvider<RitualList, List<Ritual>> {
  const RitualListProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'ritualListProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$ritualListHash();

  @$internal
  @override
  RitualList create() => RitualList();
}

String _$ritualListHash() => r'f033615abd81991192e5f21df03a8be966401abe';

abstract class _$RitualList extends $AsyncNotifier<List<Ritual>> {
  FutureOr<List<Ritual>> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<AsyncValue<List<Ritual>>, List<Ritual>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<List<Ritual>>, List<Ritual>>,
              AsyncValue<List<Ritual>>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
