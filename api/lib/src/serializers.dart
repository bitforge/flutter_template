//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_import

import 'package:one_of_serializer/any_of_serializer.dart';
import 'package:one_of_serializer/one_of_serializer.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:built_value/iso_8601_date_time_serializer.dart';
import 'package:telefonapi/src/date_serializer.dart';
import 'package:telefonapi/src/model/date.dart';

import 'package:telefonapi/src/model/dept.dart';
import 'package:telefonapi/src/model/emergency_contact.dart';
import 'package:telefonapi/src/model/person.dart';

part 'serializers.g.dart';

@SerializersFor([
  Dept,
  EmergencyContact,
  Person,
])
Serializers serializers = (_$serializers.toBuilder()
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(EmergencyContact)]),
        () => ListBuilder<EmergencyContact>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(Dept)]),
        () => ListBuilder<Dept>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(Person)]),
        () => ListBuilder<Person>(),
      )
      ..add(const OneOfSerializer())
      ..add(const AnyOfSerializer())
      ..add(const DateSerializer())
      ..add(Iso8601DateTimeSerializer()))
    .build();

Serializers standardSerializers = (serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();
