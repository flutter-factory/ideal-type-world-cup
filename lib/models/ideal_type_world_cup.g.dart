// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ideal_type_world_cup.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

IdealTypeWorldCup _$IdealTypeWorldCupFromJson(Map<String, dynamic> json) =>
    IdealTypeWorldCup(
      json['idealTypeWorldCupId'] as int?,
      json['title'] as String?,
      json['description'] as String?,
      json['worldCupStatus'] as String?,
      json['thumbnailUrl'] as String?,
    );

Map<String, dynamic> _$IdealTypeWorldCupToJson(IdealTypeWorldCup instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('idealTypeWorldCupId', instance.idealTypeWorldCupId);
  writeNotNull('title', instance.title);
  writeNotNull('description', instance.description);
  writeNotNull('worldCupStatus', instance.worldCupStatus);
  writeNotNull('thumbnailUrl', instance.thumbnailUrl);
  return val;
}
