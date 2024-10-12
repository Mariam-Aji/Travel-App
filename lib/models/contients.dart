
class Contients {
  int? id;
  String? continentsName;
  String? createdAt;
  String? updatedAt;

  Contients({this.id, this.continentsName, this.createdAt, this.updatedAt});

  Contients.fromJson(Map<String, dynamic> json) {
    id = json["id"];
    continentsName = json["continents_Name"];
    createdAt = json["created_at"];
    updatedAt = json["updated_at"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["id"] = id;
    _data["continents_Name"] = continentsName;
    _data["created_at"] = createdAt;
    _data["updated_at"] = updatedAt;
    return _data;
  }
}