// lib/models/charge_tax_rule_model.dart

import 'package:freezed_annotation/freezed_annotation.dart';

part 'charge_tax_rule_model.freezed.dart';
part 'charge_tax_rule_model.g.dart';

enum RuleType { serviceCharge, tax }

enum ValueType { percentage, fixed }

enum ConditionType { none, equalTo, between, lessThan, moreThan }

@freezed
abstract class ChargeTaxRuleModel with _$ChargeTaxRuleModel {
  const factory ChargeTaxRuleModel({
    required String id,
    required String name,
    required RuleType ruleType,
    required ValueType valueType,
    required double value,
    @Default(ConditionType.none) ConditionType conditionType,
    @Default(0.0) double conditionValue1,
    double? conditionValue2,
    @Default([]) List<String> applyToOrderTypeIds,
  }) = _ChargeTaxRuleModel;

  factory ChargeTaxRuleModel.fromJson(Map<String, dynamic> json) =>
      _$ChargeTaxRuleModelFromJson(json);
}
