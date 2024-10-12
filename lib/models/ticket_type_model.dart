
class TicketTypeModel {
  int? id;
  String? type;
  String? createdAt;
  String? updatedAt;

  TicketTypeModel({this.id, this.type, this.createdAt, this.updatedAt});

  TicketTypeModel.fromJson(Map<String, dynamic> json) {
    id = json["id"];
    type = json["type"];
    createdAt = json["created_at"];
    updatedAt = json["updated_at"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["id"] = id;
    _data["type"] = type;
    _data["created_at"] = createdAt;
    _data["updated_at"] = updatedAt;
    return _data;
  }
}