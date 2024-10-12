class Transport {
  final int id;
  final String countryName;
  final String transportationName;
  final String photo;
  final int price;

  Transport({
    required this.id,
    required this.countryName,
    required this.photo,
    required this.transportationName,
    required this.price,
  });
  factory Transport.fromJson(Map<String, dynamic> map) {
    return Transport(
      id: map['id'],
      countryName: map['country_Name'],
      photo: map['photo1'],
      transportationName: map['transportation_Name'],
      price: map['price'],
    );
  }
}
