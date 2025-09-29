// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'charge_tax_rule_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ChargeTaxRuleModel _$ChargeTaxRuleModelFromJson(Map<String, dynamic> json) =>
    _ChargeTaxRuleModel(
      id: json['id'] as String,
      name: json['name'] as String,
      ruleType: $enumDecode(_$RuleTypeEnumMap, json['ruleType']),
      valueType: $enumDecode(_$ValueTypeEnumMap, json['valueType']),
      value: (json['value'] as num).toDouble(),
      conditionType:
          $enumDecodeNullable(_$ConditionTypeEnumMap, json['conditionType']) ??
              ConditionType.none,
      conditionValue1: (json['conditionValue1'] as num?)?.toDouble() ?? 0.0,
      conditionValue2: (json['conditionValue2'] as num?)?.toDouble(),
      applyToOrderTypeIds: (json['applyToOrderTypeIds'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
    );

Map<String, dynamic> _$ChargeTaxRuleModelToJson(_ChargeTaxRuleModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'ruleType': _$RuleTypeEnumMap[instance.ruleType]!,
      'valueType': _$ValueTypeEnumMap[instance.valueType]!,
      'value': instance.value,
      'conditionType': _$ConditionTypeEnumMap[instance.conditionType]!,
      'conditionValue1': instance.conditionValue1,
      'conditionValue2': instance.conditionValue2,
      'applyToOrderTypeIds': instance.applyToOrderTypeIds,
    };

const _$RuleTypeEnumMap = {
  RuleType.serviceCharge: 'serviceCharge',
  RuleType.tax: 'tax',
};

const _$ValueTypeEnumMap = {
  ValueType.percentage: 'percentage',
  ValueType.fixed: 'fixed',
};

const _$ConditionTypeEnumMap = {
  ConditionType.none: 'none',
  ConditionType.equalTo: 'equalTo',
  ConditionType.between: 'between',
  ConditionType.lessThan: 'lessThan',
  ConditionType.moreThan: 'moreThan',
};
