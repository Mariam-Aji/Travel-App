
class Sections {
  int? id;
  String? sectionName;
  String? createdAt;
  String? updatedAt;

  Sections({this.id, this.sectionName, this.createdAt, this.updatedAt});

  Sections.fromJson(Map<String, dynamic> json) {
    id = json["id"];
    sectionName = json["section_Name"];
    createdAt = json["created_at"];
    updatedAt = json["updated_at"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["id"] = id;
    _data["section_Name"] = sectionName;
    _data["created_at"] = createdAt;
    _data["updated_at"] = updatedAt;
    return _data;
  }
}