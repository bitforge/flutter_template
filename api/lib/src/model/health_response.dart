//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'health_response.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class HealthResponse {
  /// Returns a new [HealthResponse] instance.
  HealthResponse({

     this.message = 'I am healthy.',
  });

  @JsonKey(
    defaultValue: 'I am healthy.',
    name: r'message',
    required: true,
    includeIfNull: false
  )


  final String message;



  @override
  bool operator ==(Object other) => identical(this, other) || other is HealthResponse &&
     other.message == message;

  @override
  int get hashCode =>
    message.hashCode;

  factory HealthResponse.fromJson(Map<String, dynamic> json) => _$HealthResponseFromJson(json);

  Map<String, dynamic> toJson() => _$HealthResponseToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

