// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'charge_tax_rule_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(chargeTaxRulesStream)
const chargeTaxRulesStreamProvider = ChargeTaxRulesStreamProvider._();

final class ChargeTaxRulesStreamProvider extends $FunctionalProvider<
        AsyncValue<List<ChargeTaxRuleModel>>,
        List<ChargeTaxRuleModel>,
        Stream<List<ChargeTaxRuleModel>>>
    with
        $FutureModifier<List<ChargeTaxRuleModel>>,
        $StreamProvider<List<ChargeTaxRuleModel>> {
  const ChargeTaxRulesStreamProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'chargeTaxRulesStreamProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$chargeTaxRulesStreamHash();

  @$internal
  @override
  $StreamProviderElement<List<ChargeTaxRuleModel>> $createElement(
          $ProviderPointer pointer) =>
      $StreamProviderElement(pointer);

  @override
  Stream<List<ChargeTaxRuleModel>> create(Ref ref) {
    return chargeTaxRulesStream(ref);
  }
}

String _$chargeTaxRulesStreamHash() =>
    r'18ae5d000bf94d2dd9503ed793a951616ab6d06f';

@ProviderFor(ChargeTaxRuleController)
const chargeTaxRuleControllerProvider = ChargeTaxRuleControllerProvider._();

final class ChargeTaxRuleControllerProvider
    extends $AsyncNotifierProvider<ChargeTaxRuleController, void> {
  const ChargeTaxRuleControllerProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'chargeTaxRuleControllerProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$chargeTaxRuleControllerHash();

  @$internal
  @override
  ChargeTaxRuleController create() => ChargeTaxRuleController();
}

String _$chargeTaxRuleControllerHash() =>
    r'1f3edf62dabe63aa98905fa7ecea8debfcfddc75';

abstract class _$ChargeTaxRuleController extends $AsyncNotifier<void> {
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
