
class OptionalTripModel {
  int? id;
  String? destination;
  String? expiryDate;
  String? flyDate;
  String? flyTime;
  String? numberOfFlightHours;
  int? price;
  String? availableSeats;
  String? hotels;
  String? transporation;
  String? food;
  int? seasonId;
  int? sectionId;
  int? typeTicketId;
  int? continentsId;
  String? tripschadual;
  String? journyPhoto1;
  String? journyPhoto2;
  String? journyPhoto3;
  String? createdAt;
  String? updatedAt;

  OptionalTripModel({this.id, this.destination, this.expiryDate, this.flyDate, this.flyTime, this.numberOfFlightHours, this.price, this.availableSeats, this.hotels, this.transporation, this.food, this.seasonId, this.sectionId, this.typeTicketId, this.continentsId, this.tripschadual, this.journyPhoto1, this.journyPhoto2, this.journyPhoto3, this.createdAt, this.updatedAt});

  OptionalTripModel.fromJson(Map<String, dynamic> json) {
    id = json["id"];
    destination = json["destination"];
    expiryDate = json["expiry_Date"];
    flyDate = json["fly_date"];
    flyTime = json["fly_time"];
    numberOfFlightHours = json["Number_of_flight_hours"];
    price = json["price"];
    availableSeats = json["available_seats"];
    hotels = json["hotels"];
    transporation = json["transporation"];
    food = json["Food"];
    seasonId = json["season_id"];
    sectionId = json["section_id"];
    typeTicketId = json["type_ticket_id"];
    continentsId = json["continents_id"];
    tripschadual = json["Tripschadual"];
    journyPhoto1 = json["journy_photo1"];
    journyPhoto2 = json["journy_photo2"];
    journyPhoto3 = json["journy_photo3"];
    createdAt = json["created_at"];
    updatedAt = json["updated_at"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["id"] = id;
    _data["destination"] = destination;
    _data["expiry_Date"] = expiryDate;
    _data["fly_date"] = flyDate;
    _data["fly_time"] = flyTime;
    _data["Number_of_flight_hours"] = numberOfFlightHours;
    _data["price"] = price;
    _data["available_seats"] = availableSeats;
    _data["hotels"] = hotels;
    _data["transporation"] = transporation;
    _data["Food"] = food;
    _data["season_id"] = seasonId;
    _data["section_id"] = sectionId;
    _data["type_ticket_id"] = typeTicketId;
    _data["continents_id"] = continentsId;
    _data["Tripschadual"] = tripschadual;
    _data["journy_photo1"] = journyPhoto1;
    _data["journy_photo2"] = journyPhoto2;
    _data["journy_photo3"] = journyPhoto3;
    _data["created_at"] = createdAt;
    _data["updated_at"] = updatedAt;
    return _data;
  }
}