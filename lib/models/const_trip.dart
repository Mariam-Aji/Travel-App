class ConstTrip {
  final int id;
  final String destination;
  final String expiryDate;
  final String flyDate;
  final String flyTime;
  final String numberOfFlightHours;
  final double? price;
  final int? availableSeats;
  final int hotelId;
  final int transportationId;
  final int seasonId;
  final int sectionId;
  final int continentsId;
  final int typeTicketId;
  final int tripschadualId;
  final String description;
  final double? totalPrice;
  final int avg;
  final String? createdAt;
  final String? updatedAt;

  ConstTrip({
    required this.id,
    required this.destination,
    required this.expiryDate,
    required this.flyDate,
    required this.flyTime,
    required this.numberOfFlightHours,
    required this.price,
    required this.availableSeats,
    required this.hotelId,
    required this.transportationId,
    required this.seasonId,
    required this.sectionId,
    required this.continentsId,
    required this.typeTicketId,
    required this.tripschadualId,
    required this.description,
    required this.totalPrice,
    required this.avg,
    required this.createdAt,
    required this.updatedAt,
  });

  factory ConstTrip.fromJson(Map<String, dynamic> json) {
    return ConstTrip(
      id: json['id'] ?? 0,
      destination: json['destination'] ?? '',
      expiryDate: json['expiry_Date'] ?? '',
      flyDate: json['fly_date'] ?? '',
      flyTime: json['fly_time'] ?? '',
      numberOfFlightHours: json['Number_of_flight_hours'] ?? '',
      price: json['price'] != null ? (json['price'] as num).toDouble() : null,
      availableSeats: json['available_seats'] ?? 0,
      hotelId: json['hotel_id'] ?? 0,
      transportationId: json['transportation_id'] ?? 0,
      seasonId: json['season_id'] ?? 0,
      sectionId: json['section_id'] ?? 0,
      continentsId: json['continents_id'] ?? 0,
      typeTicketId: json['type_ticket_id'] ?? 0,
      tripschadualId: json['tripschadual_id'] ?? 0,
      description: json['descripyion'] ?? '',
      totalPrice: json['Total_Price'] != null
          ? (json['Total_Price'] as num).toDouble()
          : null,
      avg: json['avg'] ?? 0,
      createdAt: json['created_at'],
      updatedAt: json['updated_at'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'destination': destination,
      'expiry_Date': expiryDate,
      'fly_date': flyDate,
      'fly_time': flyTime,
      'Number_of_flight_hours': numberOfFlightHours,
      'price': price,
      'available_seats': availableSeats,
      'hotel_id': hotelId,
      'transportation_id': transportationId,
      'season_id': seasonId,
      'section_id': sectionId,
      'continents_id': continentsId,
      'type_ticket_id': typeTicketId,
      'tripschadual_id': tripschadualId,
      'descripyion': description,
      'Total_Price': totalPrice,
      'avg': avg,
      'created_at': createdAt,
      'updated_at': updatedAt,
    };
  }

  static List<ConstTrip> fromJsonList(List<dynamic> jsonList) {
    return jsonList.map((json) => ConstTrip.fromJson(json)).toList();
  }
}
