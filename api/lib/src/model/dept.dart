//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'dept.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class Dept {
  /// Returns a new [Dept] instance.
  Dept({

    required  this.id,

     this.dept,

     this.displayName,

     this.phone,

     this.room,
  });

  @JsonKey(
    
    name: r'id',
    required: true,
    includeIfNull: false
  )


  final String id;



  @JsonKey(
    
    name: r'dept',
    required: false,
    includeIfNull: false
  )


  final DeptDeptEnum? dept;



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



  @JsonKey(
    
    name: r'room',
    required: false,
    includeIfNull: false
  )


  final String? room;



  @override
  bool operator ==(Object other) => identical(this, other) || other is Dept &&
     other.id == id &&
     other.dept == dept &&
     other.displayName == displayName &&
     other.phone == phone &&
     other.room == room;

  @override
  int get hashCode =>
    id.hashCode +
    dept.hashCode +
    displayName.hashCode +
    phone.hashCode +
    room.hashCode;

  factory Dept.fromJson(Map<String, dynamic> json) => _$DeptFromJson(json);

  Map<String, dynamic> toJson() => _$DeptToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}


enum DeptDeptEnum {
  @JsonValue(r'Human Resources')
  humanResources,
  @JsonValue(r'Information Technology')
  informationTechnology,
  @JsonValue(r'Cardiology')
  cardiology,
  @JsonValue(r'Neurology')
  neurology,
  @JsonValue(r'Orthopedics')
  orthopedics,
}


