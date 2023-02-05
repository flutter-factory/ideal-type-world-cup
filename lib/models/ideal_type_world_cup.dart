import 'package:json_annotation/json_annotation.dart';

part 'ideal_type_world_cup.g.dart';

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class IdealTypeWorldCup {
  int? idealTypeWorldCupId;
  String? title;
  String? description;
  String? worldCupStatus;
  String? thumbnailUrl;

  IdealTypeWorldCup(
    this.idealTypeWorldCupId,
    this.title,
    this.description,
    this.worldCupStatus,
    this.thumbnailUrl,
  );

  factory IdealTypeWorldCup.fromJsonModel(Object? json) =>
      IdealTypeWorldCup.fromJson(json as Map<String, dynamic>);
  static Map<String, dynamic> toJsonModel(IdealTypeWorldCup worldCup) =>
      worldCup.toJson();

  factory IdealTypeWorldCup.fromJson(Map<String, dynamic> json) =>
      _$IdealTypeWorldCupFromJson(json);
  Map<String, dynamic> toJson() => _$IdealTypeWorldCupToJson(this);

  @override
  String toString() {
    return 'IdealTypeWorldCup(idealTypeWorldCupId: $idealTypeWorldCupId, title: $title, description: $description, worldCupStatus: $worldCupStatus, thumbnailUrl: $thumbnailUrl)';
  }
}
