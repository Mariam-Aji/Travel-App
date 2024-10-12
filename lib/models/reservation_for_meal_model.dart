class ReservationForMealModel {
  final String type;
  final Reservation reservation;

  ReservationForMealModel({required this.type, required this.reservation});

  factory ReservationForMealModel.fromJson(Map<String, dynamic> json) {
    return ReservationForMealModel(
      type: json['type'] ?? 'Unknown', // Default value
      reservation: Reservation.fromJson(json['reservation']),
    );
  }
}

class Reservation {
  final int id;
  final String destination;
  final String expiryDate;
  final String flyDate;
  final String flyTime;
  final String numberOfFlightHours;
  final double price;
  final String availableSeats;
  final int hotelId;
  final int transportationId;
  final int seasonId;
  final int sectionId;
  final int continentsId;
  final int typeTicketId;
  final int tripschadualId;
  final String description;
  final double totalPrice;
  final double avg;
  final DateTime createdAt;
  final DateTime updatedAt;

  Reservation({
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

  factory Reservation.fromJson(Map<String, dynamic> json) {
    return Reservation(
      id: json['id'] ?? 0, // Default value
      destination: json['destination'] ?? 'Unknown', // Default value
      expiryDate: json['expiry_Date'] ?? '1970-01-01', // Default value
      flyDate: json['fly_date'] ?? '1970-01-01', // Default value
      flyTime: json['fly_time'] ?? '', // Default value
      numberOfFlightHours:
          json['Number_of_flight_hours'] ?? '', // Default value
      price: json['price'] ?? 0.0, // Default value
      availableSeats: json['available_seats'] ?? "0", // Default value
      hotelId: json['hotel_id'] ?? 0, // Default value
      transportationId: json['transportation_id'] ?? 0, // Default value
      seasonId: json['season_id'] ?? 0, // Default value
      sectionId: json['section_id'] ?? 0, // Default value
      continentsId: json['continents_id'] ?? 0, // Default value
      typeTicketId: json['type_ticket_id'] ?? 0, // Default value
      tripschadualId: json['tripschadual_id'] ?? 0, // Default value
      description: json['descripyion'] ?? 'No description', // Default value
      totalPrice: json['Total_Price'] ?? 0.0, // Default value
      avg: json['avg']?.toDouble() ?? 0.0, // Default value
      createdAt: json['created_at'] != null
          ? DateTime.parse(json['created_at'])
          : DateTime.now(), // Default value
      updatedAt: json['updated_at'] != null
          ? DateTime.parse(json['updated_at'])
          : DateTime.now(), // Default value
    );
  }
}
