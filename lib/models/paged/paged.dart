import 'package:json_annotation/json_annotation.dart';

part 'paged.g.dart';

@JsonSerializable(explicitToJson: true, genericArgumentFactories: true)
class Paged<T> {
  List<T>? data;
  Map<String, dynamic>? meta;
  Map<String, dynamic>? links;

  Paged({this.data, this.meta, this.links});

  factory Paged.fromJson(
    Map<String, dynamic> json,
    T Function(Object? json) fromJsonT,
  ) =>
      _$PagedFromJson<T>(json, fromJsonT);

  Map<String, dynamic> toJson(Object Function(T) toJsonT) =>
      _$PagedToJson<T>(this, toJsonT);

  @override
  String toString() {
    return 'Paged $T(meta: $meta, links: $links, data: $data)';
  }
}
