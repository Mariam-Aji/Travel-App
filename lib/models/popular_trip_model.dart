
class PopularTripModel {
  int? id;
  String? destinationEn;
  dynamic destinationAr;
  String? expiryDate;
  String? flyDate;
  String? flyTime;
  String? numberOfFlightHours;
  int? price;
  String? availableSeats;
  int? hotelId;
  int? transportationId;
  int? seasonId;
  int? sectionId;
  int? continentsId;
  int? typeTicketId;
  int? tripschadualId;
  String? descripyionEn;
  String? descripyionAr;
  int? totalPrice;
  int? avg;
  String? photo1;
  String? photo2;
  String? photo3;
  dynamic createdAt;
  dynamic updatedAt;

  PopularTripModel({this.id, this.destinationEn, this.destinationAr, this.expiryDate, this.flyDate, this.flyTime, this.numberOfFlightHours, this.price, this.availableSeats, this.hotelId, this.transportationId, this.seasonId, this.sectionId, this.continentsId, this.typeTicketId, this.tripschadualId, this.descripyionEn, this.descripyionAr, this.totalPrice, this.avg, this.photo1, this.photo2, this.photo3, this.createdAt, this.updatedAt});

  PopularTripModel.fromJson(Map<String, dynamic> json) {
    id = json["id"];
    destinationEn = json["destination_en"];
    destinationAr = json["destination_ar"];
    expiryDate = json["expiry_Date"];
    flyDate = json["fly_date"];
    flyTime = json["fly_time"];
    numberOfFlightHours = json["Number_of_flight_hours"];
    price = json["price"];
    availableSeats = json["available_seats"];
    hotelId = json["hotel_id"];
    transportationId = json["transportation_id"];
    seasonId = json["season_id"];
    sectionId = json["section_id"];
    continentsId = json["continents_id"];
    typeTicketId = json["type_ticket_id"];
    tripschadualId = json["tripschadual_id"];
    descripyionEn = json["descripyion_en"];
    descripyionAr = json["descripyion_ar"];
    totalPrice = json["Total_Price"];
    avg = json["avg"];
    photo1 = json["photo1"];
    photo2 = json["photo2"];
    photo3 = json["photo3"];
    createdAt = json["created_at"];
    updatedAt = json["updated_at"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["id"] = id;
    _data["destination_en"] = destinationEn;
    _data["destination_ar"] = destinationAr;
    _data["expiry_Date"] = expiryDate;
    _data["fly_date"] = flyDate;
    _data["fly_time"] = flyTime;
    _data["Number_of_flight_hours"] = numberOfFlightHours;
    _data["price"] = price;
    _data["available_seats"] = availableSeats;
    _data["hotel_id"] = hotelId;
    _data["transportation_id"] = transportationId;
    _data["season_id"] = seasonId;
    _data["section_id"] = sectionId;
    _data["continents_id"] = continentsId;
    _data["type_ticket_id"] = typeTicketId;
    _data["tripschadual_id"] = tripschadualId;
    _data["descripyion_en"] = descripyionEn;
    _data["descripyion_ar"] = descripyionAr;
    _data["Total_Price"] = totalPrice;
    _data["avg"] = avg;
    _data["photo1"] = photo1;
    _data["photo2"] = photo2;
    _data["photo3"] = photo3;
    _data["created_at"] = createdAt;
    _data["updated_at"] = updatedAt;
    return _data;
  }
}