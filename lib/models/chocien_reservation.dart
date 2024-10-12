class ChocienOptinalReservation {
  final int id;
  final int userId;
  final int? optionalJourneyId; // Nullable
  final int? tripScheduleId; // Nullable
  final int numberOfTickets;
  final int? hotelId; // Nullable
  final int? transportationId; // Nullable
  final double priceOfJourney;
  final double totalPrice;
  final String? confirmation; // Nullable
  final String paymentStatus;
  final DateTime? createdAt; // Nullable
  final DateTime? updatedAt; // Nullable

  ChocienOptinalReservation({
    required this.id,
    required this.userId,
    this.optionalJourneyId,
    this.tripScheduleId,
    required this.numberOfTickets,
    this.hotelId,
    this.transportationId,
    required this.priceOfJourney,
    required this.totalPrice,
    this.confirmation,
    required this.paymentStatus,
    this.createdAt,
    this.updatedAt,
  });

  factory ChocienOptinalReservation.fromJson(Map<String, dynamic> json) {
    return ChocienOptinalReservation(
      id: json['id'] ?? 0,
      userId: json['user_id'] ?? 0,
      optionalJourneyId: json['optionaljourny_id'],
      tripScheduleId: json['tripschadual_id'],
      numberOfTickets: json['Number_of_Tickets'] ?? 0,
      hotelId: json['hotel_id'],
      transportationId: json['transportaion_id'],
      priceOfJourney: (json['price_of_journy'] ?? 0).toDouble(),
      totalPrice: (json['totalPrice'] ?? 0).toDouble(),
      confirmation: json['confirmation'],
      paymentStatus: json['payment_status'] ?? 'not paid',
      createdAt: json['created_at'] != null
          ? DateTime.parse(json['created_at'])
          : null,
      updatedAt: json['updated_at'] != null
          ? DateTime.parse(json['updated_at'])
          : null,
    );
  }
}

class ChocienConstReservation {
  final int id;
  final int constTripId;
  final int userId;
  final int numberOfTickets;
  final double totalPrice;
  final String? confirmation; // Nullable
  final String paymentStatus;
  final DateTime? createdAt; // Nullable
  final DateTime? updatedAt; // Nullable

  ChocienConstReservation({
    required this.id,
    required this.constTripId,
    required this.userId,
    required this.numberOfTickets,
    required this.totalPrice,
    this.confirmation,
    required this.paymentStatus,
    this.createdAt,
    this.updatedAt,
  });

  factory ChocienConstReservation.fromJson(Map<String, dynamic> json) {
    return ChocienConstReservation(
      id: json['id'] ?? 0,
      constTripId: json['constTrip_id'] ?? 0,
      userId: json['user_id'] ?? 0,
      numberOfTickets: json['Number_of_Tickets'] ?? 0,
      totalPrice: (json['totalPrice'] ?? 0).toDouble(),
      confirmation: json['confirmation'],
      paymentStatus: json['payment_status'] ?? 'Not paid',
      createdAt: json['created_at'] != null
          ? DateTime.parse(json['created_at'])
          : null,
      updatedAt: json['updated_at'] != null
          ? DateTime.parse(json['updated_at'])
          : null,
    );
  }
}
