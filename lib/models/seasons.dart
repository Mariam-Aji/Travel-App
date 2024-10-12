
class Seasons {
  int? id;
  String? seasonName;
  String? createdAt;
  String? updatedAt;

  Seasons({this.id, this.seasonName, this.createdAt, this.updatedAt});

  Seasons.fromJson(Map<String, dynamic> json) {
    id = json["id"];
    seasonName = json["season_Name"];
    createdAt = json["created_at"];
    updatedAt = json["updated_at"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["id"] = id;
    _data["season_Name"] = seasonName;
    _data["created_at"] = createdAt;
    _data["updated_at"] = updatedAt;
    return _data;
  }
}