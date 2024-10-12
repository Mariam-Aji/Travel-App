class Trip {
  final int id;
  final String destinationEn;
  final String destinationAr;
  final String expiryDate;
  final String flyDate;
  final String flyTime;
  final String numberOfFlightHours;
  final double? price;
  final String availableSeats;
  final String hotels;
  final String transportation;
  final String food;
  final int seasonId;
  final int sectionId;
  final int typeTicketId;
  final int continentsId;
  final String tripschadual;
  final String journyPhoto1;
  final String journyPhoto2;
  final String journyPhoto3;
  final String? createdAt;
  final String? updatedAt;

  Trip({
    required this.id,
    required this.destinationEn,
    required this.destinationAr,
    required this.expiryDate,
    required this.flyDate,
    required this.flyTime,
    required this.numberOfFlightHours,
    required this.price,
    required this.availableSeats,
    required this.hotels,
    required this.transportation,
    required this.food,
    required this.seasonId,
    required this.sectionId,
    required this.typeTicketId,
    required this.continentsId,
    required this.tripschadual,
    required this.journyPhoto1,
    required this.journyPhoto2,
    required this.journyPhoto3,
    required this.createdAt,
    required this.updatedAt,
  });

  factory Trip.fromJson(Map<String, dynamic> json) {
    return Trip(
      id: json['id'] ?? 0,
      destinationEn: json['destination_en'] ?? '',
      destinationAr: json['destination_ar'] ?? '',
      expiryDate: json['expiry_Date'] ?? '',
      flyDate: json['fly_date'] ?? '',
      flyTime: json['fly_time'] ?? '',
      numberOfFlightHours: json['Number_of_flight_hours'] ?? '',
      price: json['price'] != null ? (json['price'] as num).toDouble() : null,
      availableSeats: json['available_seats'] ?? '',
      hotels: json['hotels'] ?? '',
      transportation: json['transporation'] ?? '',
      food: json['Food'] ?? '',
      seasonId: json['season_id'] ?? 0,
      sectionId: json['section_id'] ?? 0,
      typeTicketId: json['type_ticket_id'] ?? 0,
      continentsId: json['continents_id'] ?? 0,
      tripschadual: json['Tripschadual'] ?? '',
      journyPhoto1: json['journy_photo1'] ?? '',
      journyPhoto2: json['journy_photo2'] ?? '',
      journyPhoto3: json['journy_photo3'] ?? '',
      createdAt: json['created_at'],
      updatedAt: json['updated_at'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'destination_en': destinationEn,
      'destination_ar': destinationAr,
      'expiry_Date': expiryDate,
      'fly_date': flyDate,
      'fly_time': flyTime,
      'Number_of_flight_hours': numberOfFlightHours,
      'price': price,
      'available_seats': availableSeats,
      'hotels': hotels,
      'transporation': transportation,
      'Food': food,
      'season_id': seasonId,
      'section_id': sectionId,
      'type_ticket_id': typeTicketId,
      'continents_id': continentsId,
      'Tripschadual': tripschadual,
      'journy_photo1': journyPhoto1,
      'journy_photo2': journyPhoto2,
      'journy_photo3': journyPhoto3,
      'created_at': createdAt,
      'updated_at': updatedAt,
    };
  }

  static List<Trip> fromJsonList(List<dynamic> jsonList) {
    return jsonList.map((json) => Trip.fromJson(json)).toList();
  }
}
