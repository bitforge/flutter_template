//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'emergency_contact.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class EmergencyContact {
  /// Returns a new [EmergencyContact] instance.
  EmergencyContact({

    required  this.id,

     this.displayName,

     this.phone,
  });

  @JsonKey(
    
    name: r'id',
    required: true,
    includeIfNull: false
  )


  final String id;



  @JsonKey(
    
    name: r'displayName',
    required: false,
    includeIfNull: false
  )


  final String? displayName;



  @JsonKey(
    
    name: r'phone',
    required: false,
    includeIfNull: false
  )


  final String? phone;



  @override
  bool operator ==(Object other) => identical(this, other) || other is EmergencyContact &&
     other.id == id &&
     other.displayName == displayName &&
     other.phone == phone;

  @override
  int get hashCode =>
    id.hashCode +
    displayName.hashCode +
    phone.hashCode;

  factory EmergencyContact.fromJson(Map<String, dynamic> json) => _$EmergencyContactFromJson(json);

  Map<String, dynamic> toJson() => _$EmergencyContactToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

