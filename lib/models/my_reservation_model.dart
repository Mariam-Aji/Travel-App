
class MyReservationModel {
  int? id;
  int? userId;
  int? optionaljournyId;
  int? tripschadualId;
  int? numberOfTickets;
  int? hotelId;
  int? transportaionId;
  int? priceOfJourny;
  int? totalPrice;
  dynamic confirmation;
  String? paymentStatus;
  String? createdAt;
  String? updatedAt;
  String? destinationEn;
  String? destinationAr;

  MyReservationModel({this.id, this.userId, this.optionaljournyId, this.tripschadualId, this.numberOfTickets, this.hotelId, this.transportaionId, this.priceOfJourny, this.totalPrice, this.confirmation, this.paymentStatus, this.createdAt, this.updatedAt, this.destinationEn, this.destinationAr});

  MyReservationModel.fromJson(Map<String, dynamic> json) {
    id = json["id"];
    userId = json["user_id"];
    optionaljournyId = json["optionaljourny_id"];
    tripschadualId = json["tripschadual_id"];
    numberOfTickets = json["Number_of_Tickets"];
    hotelId = json["hotel_id"];
    transportaionId = json["transportaion_id"];
    priceOfJourny = json["price_of_journy"];
    totalPrice = json["totalPrice"];
    confirmation = json["confirmation"];
    paymentStatus = json["payment_status"];
    createdAt = json["created_at"];
    updatedAt = json["updated_at"];
    destinationEn = json["destination_en"];
    destinationAr = json["destination_ar"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["id"] = id;
    _data["user_id"] = userId;
    _data["optionaljourny_id"] = optionaljournyId;
    _data["tripschadual_id"] = tripschadualId;
    _data["Number_of_Tickets"] = numberOfTickets;
    _data["hotel_id"] = hotelId;
    _data["transportaion_id"] = transportaionId;
    _data["price_of_journy"] = priceOfJourny;
    _data["totalPrice"] = totalPrice;
    _data["confirmation"] = confirmation;
    _data["payment_status"] = paymentStatus;
    _data["created_at"] = createdAt;
    _data["updated_at"] = updatedAt;
    _data["destination_en"] = destinationEn;
    _data["destination_ar"] = destinationAr;
    return _data;
  }
}

class MyConstReservation {
  int? id;
  int? constTripId;
  int? userId;
  int? numberOfTickets;
  int? totalPrice;
  dynamic confirmation;
  String? paymentStatus;
  String? createdAt;
  String? updatedAt;
  String? destinationEn;
  String? destinationAr;

  MyConstReservation({this.id, this.constTripId, this.userId, this.numberOfTickets, this.totalPrice, this.confirmation, this.paymentStatus, this.createdAt, this.updatedAt, this.destinationEn, this.destinationAr});

  MyConstReservation.fromJson(Map<String, dynamic> json) {
    id = json["id"];
    constTripId = json["constTrip_id"];
    userId = json["user_id"];
    numberOfTickets = json["Number_of_Tickets"];
    totalPrice = json["totalPrice"];
    confirmation = json["confirmation"];
    paymentStatus = json["payment_status"];
    createdAt = json["created_at"];
    updatedAt = json["updated_at"];
    destinationEn = json["destination_en"];
    destinationAr = json["destination_ar"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["id"] = id;
    _data["constTrip_id"] = constTripId;
    _data["user_id"] = userId;
    _data["Number_of_Tickets"] = numberOfTickets;
    _data["totalPrice"] = totalPrice;
    _data["confirmation"] = confirmation;
    _data["payment_status"] = paymentStatus;
    _data["created_at"] = createdAt;
    _data["updated_at"] = updatedAt;
    _data["destination_en"] = destinationEn;
    _data["destination_ar"] = destinationAr;
    return _data;
  }
}

class MyTicketReservation {
  int? id;
  int? userId;
  int? transportaionId;
  int? ticketId;
  int? numberOfTickets;
  int? totalPrice;
  dynamic confirmation;
  String? paymentStatus;
  String? createdAt;
  String? updatedAt;
  String? destinationEn;
  String? destinationAr;

  MyTicketReservation({this.id, this.userId, this.transportaionId, this.ticketId, this.numberOfTickets, this.totalPrice, this.confirmation, this.paymentStatus, this.createdAt, this.updatedAt, this.destinationEn, this.destinationAr});

  MyTicketReservation.fromJson(Map<String, dynamic> json) {
    id = json["id"];
    userId = json["user_id"];
    transportaionId = json["transportaion_id"];
    ticketId = json["ticket_id"];
    numberOfTickets = json["Number_of_Tickets"];
    totalPrice = json["totalPrice"];
    confirmation = json["confirmation"];
    paymentStatus = json["payment_status"];
    createdAt = json["created_at"];
    updatedAt = json["updated_at"];
    destinationEn = json["destination_en"];
    destinationAr = json["destination_ar"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["id"] = id;
    _data["user_id"] = userId;
    _data["transportaion_id"] = transportaionId;
    _data["ticket_id"] = ticketId;
    _data["Number_of_Tickets"] = numberOfTickets;
    _data["totalPrice"] = totalPrice;
    _data["confirmation"] = confirmation;
    _data["payment_status"] = paymentStatus;
    _data["created_at"] = createdAt;
    _data["updated_at"] = updatedAt;
    _data["destination_en"] = destinationEn;
    _data["destination_ar"] = destinationAr;
    return _data;
  }
}