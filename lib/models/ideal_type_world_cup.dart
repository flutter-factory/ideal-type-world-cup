class IdealTypeWorldCup {
  int? idealTypeWorldCupId;
  String? title;
  String? description;
  String? worldCupStatus;
  String? thumbnailUrl;

  IdealTypeWorldCup(
      {this.idealTypeWorldCupId,
        this.title,
        this.description = '',
        this.worldCupStatus,
        this.thumbnailUrl,
      });

  IdealTypeWorldCup.fromJson(Map<String, dynamic> json) {
    idealTypeWorldCupId = json['idealTypeWorldCupId'];
    title = json['title'];
    description = json['description'];
    worldCupStatus = json['worldCupStatus'];
    thumbnailUrl = json['thumbnailUrl'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['idealTypeWorldCupId'] = idealTypeWorldCupId;
    data['title'] = title;
    data['description'] = description;
    data['worldCupStatus'] = worldCupStatus;
    data['thumbnailUrl'] = thumbnailUrl;
    return data;
  }

  @override
  String toString() {
    return 'IdealTypeWorldCup(idealTypeWorldCupId: $idealTypeWorldCupId, title: $title, description: $description, worldCupStatus: $worldCupStatus, thumbnailUrl: $thumbnailUrl)';
  }
}
