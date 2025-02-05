//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'cat_fact.g.dart';

@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class CatFact {
  /// Returns a new [CatFact] instance.
  CatFact({
    this.fact,
    this.length,
  });

  /// Fact
  @JsonKey(
    name: r'fact',
    required: false,
    includeIfNull: false,
  )
  final String? fact;

  /// Length
  @JsonKey(
    name: r'length',
    required: false,
    includeIfNull: false,
  )
  final int? length;

  @override
  bool operator ==(Object other) =>
      identical(this, other) || other is CatFact && other.fact == fact && other.length == length;

  @override
  int get hashCode => fact.hashCode + length.hashCode;

  factory CatFact.fromJson(Map<String, dynamic> json) => _$CatFactFromJson(json);

  Map<String, dynamic> toJson() => _$CatFactToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}
