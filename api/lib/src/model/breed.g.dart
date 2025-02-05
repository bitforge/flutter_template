// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'breed.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Breed _$BreedFromJson(Map<String, dynamic> json) => $checkedCreate(
      'Breed',
      json,
      ($checkedConvert) {
        final val = Breed(
          breed: $checkedConvert('breed', (v) => v as String?),
          country: $checkedConvert('country', (v) => v as String?),
          origin: $checkedConvert('origin', (v) => v as String?),
          coat: $checkedConvert('coat', (v) => v as String?),
          pattern: $checkedConvert('pattern', (v) => v as String?),
        );
        return val;
      },
    );

Map<String, dynamic> _$BreedToJson(Breed instance) => <String, dynamic>{
      if (instance.breed case final value?) 'breed': value,
      if (instance.country case final value?) 'country': value,
      if (instance.origin case final value?) 'origin': value,
      if (instance.coat case final value?) 'coat': value,
      if (instance.pattern case final value?) 'pattern': value,
    };
