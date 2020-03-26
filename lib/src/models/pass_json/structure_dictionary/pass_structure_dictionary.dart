import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:pass_flutter/src/models/pass_json/structure_dictionary/fields/fields.dart';

part 'pass_structure_dictionary.g.dart';

@JsonSerializable()
class PassStructureDictionary extends Equatable {
  /// Optional. Additional fields to be displayed on the front of the pass.
  final List<Fields> auxiliaryFields;

  /// Optional. Fields to be displayed in the header on the front of the pass.
  /// Use header fields sparingly; unlike all other fields, they remain visible when a stack of passes are displayed.
  final List<Fields> headerFields;

  /// Optional. Fields to be displayed on the front of the pass.
  final List<Fields> secondaryFields;

  /// Optional. Fields to be on the back of the pass.
  final List<Fields> backFields;

  /// Optional. Fields to be displayed prominently on the front of the pass.
  final List<Fields> primaryFields;

  /// Required for boarding passes; otherwise not allowed.
  /// Type of transit. Must be one of the following values:
  /// PKTransitTypeAir, PKTransitTypeBoat, PKTransitTypeBus, PKTransitTypeGeneric,PKTransitTypeTrain.
  final String transitType;

  PassStructureDictionary({
    this.headerFields,
    this.secondaryFields,
    this.backFields,
    this.auxiliaryFields,
    this.primaryFields,
    this.transitType,
  });

  factory PassStructureDictionary.fromJson(Map<String, dynamic> json) =>
      _$PassStructureDictionaryFromJson(json);

  Map<String, dynamic> toJson() => _$PassStructureDictionaryToJson(this);

  @override
  List<Object> get props => [
        this.headerFields,
        this.secondaryFields,
        this.backFields,
        this.auxiliaryFields,
        this.primaryFields,
        this.transitType,
      ];
}
