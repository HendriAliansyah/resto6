import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:resto2/models/charge_tax_rule_model.dart';
import 'package:resto2/providers/auth_providers.dart';
import 'package:resto2/providers/restaurant_provider.dart';

part 'charge_tax_rule_provider.g.dart';

@riverpod
Stream<List<ChargeTaxRuleModel>> chargeTaxRulesStream(Ref ref) {
  final restaurantId = ref.watch(userRestaurantIdProvider);
  if (restaurantId == null) {
    return Stream.value([]);
  }
  return ref
      .watch(restaurantServiceProvider)
      .getChargeTaxRulesStream(restaurantId);
}

@riverpod
class ChargeTaxRuleController extends _$ChargeTaxRuleController {
  @override
  FutureOr<void> build() {
    // No-op
  }

  Future<void> _run(Future<void> Function() action) async {
    state = const AsyncLoading();
    try {
      await action();
      if (ref.mounted) {
        state = const AsyncData(null);
      }
    } catch (e, st) {
      if (ref.mounted) {
        state = AsyncError(e, st);
      }
    }
  }

  Future<void> saveRule(ChargeTaxRuleModel rule) => _run(() async {
        final restaurantId = ref.read(userRestaurantIdProvider);
        if (restaurantId == null) {
          throw Exception('User is not in a restaurant.');
        }
        await ref
            .read(restaurantServiceProvider)
            .saveChargeTaxRule(restaurantId, rule);
      });

  Future<void> deleteRule(String ruleId) => _run(() async {
        final restaurantId = ref.read(userRestaurantIdProvider);
        if (restaurantId == null) {
          throw Exception('User is not in a restaurant.');
        }
        await ref
            .read(restaurantServiceProvider)
            .deleteChargeTaxRule(restaurantId, ruleId);
      });
}
