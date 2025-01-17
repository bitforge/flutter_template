//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'person.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class Person {
  /// Returns a new [Person] instance.
  Person({

    required  this.id,

     this.lastName,

     this.firstName,

     this.displayName,

     this.dept,

     this.phone,

     this.mail,
  });

  @JsonKey(
    
    name: r'id',
    required: true,
    includeIfNull: false
  )


  final String id;



  @JsonKey(
    
    name: r'lastName',
    required: false,
    includeIfNull: false
  )


  final String? lastName;



  @JsonKey(
    
    name: r'firstName',
    required: false,
    includeIfNull: false
  )


  final String? firstName;



  @JsonKey(
    
    name: r'displayName',
    required: false,
    includeIfNull: false
  )


  final String? displayName;



  @JsonKey(
    
    name: r'dept',
    required: false,
    includeIfNull: false
  )


  final PersonDeptEnum? dept;



  @JsonKey(
    
    name: r'phone',
    required: false,
    includeIfNull: false
  )


  final String? phone;



  @JsonKey(
    
    name: r'mail',
    required: false,
    includeIfNull: false
  )


  final String? mail;



  @override
  bool operator ==(Object other) => identical(this, other) || other is Person &&
     other.id == id &&
     other.lastName == lastName &&
     other.firstName == firstName &&
     other.displayName == displayName &&
     other.dept == dept &&
     other.phone == phone &&
     other.mail == mail;

  @override
  int get hashCode =>
    id.hashCode +
    lastName.hashCode +
    firstName.hashCode +
    displayName.hashCode +
    dept.hashCode +
    phone.hashCode +
    mail.hashCode;

  factory Person.fromJson(Map<String, dynamic> json) => _$PersonFromJson(json);

  Map<String, dynamic> toJson() => _$PersonToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}


enum PersonDeptEnum {
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


