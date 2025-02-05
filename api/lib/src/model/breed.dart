//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'breed.g.dart';

@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class Breed {
  /// Returns a new [Breed] instance.
  Breed({
    this.breed,
    this.country,
    this.origin,
    this.coat,
    this.pattern,
  });

  /// Breed
  @JsonKey(
    name: r'breed',
    required: false,
    includeIfNull: false,
  )
  final String? breed;

  /// Country
  @JsonKey(
    name: r'country',
    required: false,
    includeIfNull: false,
  )
  final String? country;

  /// Origin
  @JsonKey(
    name: r'origin',
    required: false,
    includeIfNull: false,
  )
  final String? origin;

  /// Coat
  @JsonKey(
    name: r'coat',
    required: false,
    includeIfNull: false,
  )
  final String? coat;

  /// Pattern
  @JsonKey(
    name: r'pattern',
    required: false,
    includeIfNull: false,
  )
  final String? pattern;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Breed &&
          other.breed == breed &&
          other.country == country &&
          other.origin == origin &&
          other.coat == coat &&
          other.pattern == pattern;

  @override
  int get hashCode => breed.hashCode + country.hashCode + origin.hashCode + coat.hashCode + pattern.hashCode;

  factory Breed.fromJson(Map<String, dynamic> json) => _$BreedFromJson(json);

  Map<String, dynamic> toJson() => _$BreedToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}
