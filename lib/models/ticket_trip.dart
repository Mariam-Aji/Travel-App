class TicketTrip {
    final int id;
    final String destination;
    final String expiryDate;
    final String flyDate;
    final String flyTime;
    final String numberOfFlightHours;
    final String transportationId;
    final int price;
    final String availableSeats;
    final int continentsId;
    final int typeTicketId;
    final String journeyPhoto1;
    final String journeyPhoto2;
    final String journeyPhoto3;
    final DateTime createdAt;
    final DateTime updatedAt;

    TicketTrip({
        required this.id,
        required this.destination,
        required this.expiryDate,
        required this.flyDate,
        required this.flyTime,
        required this.numberOfFlightHours,
        required this.transportationId,
        required this.price,
        required this.availableSeats,
        required this.continentsId,
        required this.typeTicketId,
        required this.journeyPhoto1,
        required this.journeyPhoto2,
        required this.journeyPhoto3,
        required this.createdAt,
        required this.updatedAt,
    });

    factory TicketTrip.fromJson(Map<String, dynamic> json) {
        return TicketTrip(
            id: json['id'] ?? 0,
            destination: json['destination'] ?? '',
            expiryDate: json['expiry_Date'] ?? '',
            flyDate: json['fly_date'] ?? '',
            flyTime: json['fly_time'] ?? '',
            numberOfFlightHours: json['Number_of_flight_hours'] ?? '',
            transportationId: json['transportaion_id'] ?? '',
            price: json['price'] ?? 0,
            availableSeats: json['available_seats'] ?? '',
            continentsId: json['continents_id'] ?? 0,
            typeTicketId: json['type_ticket_id'] ?? 0,
            journeyPhoto1: json['journy_photo1'] ?? '',
            journeyPhoto2: json['journy_photo2'] ?? '',
            journeyPhoto3: json['journy_photo3'] ?? '',
            createdAt: DateTime.parse(json['created_at'] ?? DateTime.now().toIso8601String()),
            updatedAt: DateTime.parse(json['updated_at'] ?? DateTime.now().toIso8601String()),
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
            'transportaion_id': transportationId,
            'price': price,
            'available_seats': availableSeats,
            'continents_id': continentsId,
            'type_ticket_id': typeTicketId,
            'journy_photo1': journeyPhoto1,
            'journy_photo2': journeyPhoto2,
            'journy_photo3': journeyPhoto3,
            'created_at': createdAt.toIso8601String(),
            'updated_at': updatedAt.toIso8601String(),
        };
    }
}
