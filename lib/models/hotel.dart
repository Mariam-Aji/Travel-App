class Hotel {
  final int id;
  final String countryName;
  final String typeReservation;
  final int price;
  final String photo1;
  final String photo2;
  final String photo3;
  final String hotelName;

  Hotel(
      {required this.id,
      required this.countryName,
      required this.typeReservation,
      required this.price,
      required this.photo1,
      required this.photo2,
      required this.hotelName,
      required this.photo3});
  factory Hotel.fromJson(Map<String, dynamic> map) {
    return Hotel(
        id: map['id'] ?? 0,
        countryName: map['country_Name'] ?? '',
        typeReservation: map['Type_Reservation'] ?? "",
        price: map['price'] ?? 0,
        photo1: map['photo1'] ?? '',
        photo2: map['photo2'] ?? '',
        hotelName: map['hotel_Name'] ?? '',
        photo3: map['photo3'] ?? '');
  }
}
