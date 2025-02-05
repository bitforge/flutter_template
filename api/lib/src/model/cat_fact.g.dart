// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cat_fact.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CatFact _$CatFactFromJson(Map<String, dynamic> json) => $checkedCreate(
      'CatFact',
      json,
      ($checkedConvert) {
        final val = CatFact(
          fact: $checkedConvert('fact', (v) => v as String?),
          length: $checkedConvert('length', (v) => (v as num?)?.toInt()),
        );
        return val;
      },
    );

Map<String, dynamic> _$CatFactToJson(CatFact instance) => <String, dynamic>{
      if (instance.fact case final value?) 'fact': value,
      if (instance.length case final value?) 'length': value,
    };
