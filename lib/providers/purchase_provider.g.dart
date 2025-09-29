// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'purchase_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(purchaseService)
const purchaseServiceProvider = PurchaseServiceProvider._();

final class PurchaseServiceProvider extends $FunctionalProvider<PurchaseService,
    PurchaseService, PurchaseService> with $Provider<PurchaseService> {
  const PurchaseServiceProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'purchaseServiceProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$purchaseServiceHash();

  @$internal
  @override
  $ProviderElement<PurchaseService> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  PurchaseService create(Ref ref) {
    return purchaseService(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(PurchaseService value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<PurchaseService>(value),
    );
  }
}

String _$purchaseServiceHash() => r'd2e059d9c76811ebf1ce6f332dc28a1166233fb1';

@ProviderFor(purchasesStream)
const purchasesStreamProvider = PurchasesStreamProvider._();

final class PurchasesStreamProvider extends $FunctionalProvider<
        AsyncValue<List<PurchaseModel>>,
        List<PurchaseModel>,
        Stream<List<PurchaseModel>>>
    with
        $FutureModifier<List<PurchaseModel>>,
        $StreamProvider<List<PurchaseModel>> {
  const PurchasesStreamProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'purchasesStreamProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$purchasesStreamHash();

  @$internal
  @override
  $StreamProviderElement<List<PurchaseModel>> $createElement(
          $ProviderPointer pointer) =>
      $StreamProviderElement(pointer);

  @override
  Stream<List<PurchaseModel>> create(Ref ref) {
    return purchasesStream(ref);
  }
}

String _$purchasesStreamHash() => r'a51c76502bf497aefe49b0c918ff2dc79b17ff49';

@ProviderFor(PurchaseController)
const purchaseControllerProvider = PurchaseControllerProvider._();

final class PurchaseControllerProvider
    extends $AsyncNotifierProvider<PurchaseController, void> {
  const PurchaseControllerProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'purchaseControllerProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$purchaseControllerHash();

  @$internal
  @override
  PurchaseController create() => PurchaseController();
}

String _$purchaseControllerHash() =>
    r'f90f9f7fbf19ccae4d1d74181742fd4bd379a644';

abstract class _$PurchaseController extends $AsyncNotifier<void> {
  FutureOr<void> build();
  @$mustCallSuper
  @override
  void runBuild() {
    build();
    final ref = this.ref as $Ref<AsyncValue<void>, void>;
    final element = ref.element as $ClassProviderElement<
        AnyNotifier<AsyncValue<void>, void>,
        AsyncValue<void>,
        Object?,
        Object?>;
    element.handleValue(ref, null);
  }
}
