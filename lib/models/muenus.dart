class Menu {
  final int id;
  final int hotelId;
  final String typeEn;
  final String typeAr;
  final String fDishEn;
  final String fDishAr;
  final double fPrice;
  final String fPhoto;
  final String sDishEn;
  final String sDishAr;
  final double sPrice;
  final String sPhoto;
  final String tDishEn;
  final String tDishAr;
  final double tPrice;
  final String tPhoto;
  final String foDishEn;
  final String foDishAr;
  final double foPrice;
  final String foPhoto;
  final String drinksEn;
  final String drinksAr;
  final double totalPrice;
  final DateTime? createdAt;
  final DateTime? updatedAt;

  Menu({
    required this.id,
    required this.hotelId,
    required this.typeEn,
    required this.typeAr,
    required this.fDishEn,
    required this.fDishAr,
    required this.fPrice,
    required this.fPhoto,
    required this.sDishEn,
    required this.sDishAr,
    required this.sPrice,
    required this.sPhoto,
    required this.tDishEn,
    required this.tDishAr,
    required this.tPrice,
    required this.tPhoto,
    required this.foDishEn,
    required this.foDishAr,
    required this.foPrice,
    required this.foPhoto,
    required this.drinksEn,
    required this.drinksAr,
    required this.totalPrice,
    this.createdAt,
    this.updatedAt,
  });

  factory Menu.fromJson(Map<String, dynamic> json) {
    return Menu(
      id: json['id'] ?? 0,
      hotelId: json['hotel_id'] ?? 0,
      typeEn: json['type_en'] ?? '',
      typeAr: json['type_ar'] ?? '',
      fDishEn: json['F_dish_en'] ?? '',
      fDishAr: json['F_dish_ar'] ?? '',
      fPrice: (json['F_price'] ?? 0).toDouble(),
      fPhoto: json['Fphoto'] ?? '',
      sDishEn: json['S_dish_en'] ?? '',
      sDishAr: json['S_dish_ar'] ?? '',
      sPrice: (json['S_price'] ?? 0).toDouble(),
      sPhoto: json['Sphoto'] ?? '',
      tDishEn: json['T_dish_en'] ?? '',
      tDishAr: json['T_dish_ar'] ?? '',
      tPrice: (json['T_price'] ?? 0).toDouble(),
      tPhoto: json['Tphoto'] ?? '',
      foDishEn: json['FO_dish_en'] ?? '',
      foDishAr: json['FO_dish_ar'] ?? '',
      foPrice: (json['FO_price'] ?? 0).toDouble(),
      foPhoto: json['FOphoto'] ?? '',
      drinksEn: json['drinks_en'] ?? '',
      drinksAr: json['drinks_ar'] ?? '',
      totalPrice: (json['total_price'] ?? 0).toDouble(),
      createdAt: json['created_at'] != null
          ? DateTime.parse(json['created_at'])
          : null,
      updatedAt: json['updated_at'] != null
          ? DateTime.parse(json['updated_at'])
          : null,
    );
  }
}

class ConstMenu {
  final int id;
  final int hotelId;
  final String typeEn;
  final String typeAr;
  final String fDishEn;
  final String fDishAr;
  final double fPrice;
  final String fPhoto;
  final String sDishEn;
  final String sDishAr;
  final double sPrice;
  final String sPhoto;
  final String tDishEn;
  final String tDishAr;
  final double tPrice;
  final String tPhoto;
  final String foDishEn;
  final String foDishAr;
  final double foPrice;
  final String foPhoto;
  final String drinksEn;
  final String drinksAr;
  final double totalPrice;
  final DateTime? createdAt;
  final DateTime? updatedAt;

  ConstMenu({
    required this.id,
    required this.hotelId,
    required this.typeEn,
    required this.typeAr,
    required this.fDishEn,
    required this.fDishAr,
    required this.fPrice,
    required this.fPhoto,
    required this.sDishEn,
    required this.sDishAr,
    required this.sPrice,
    required this.sPhoto,
    required this.tDishEn,
    required this.tDishAr,
    required this.tPrice,
    required this.tPhoto,
    required this.foDishEn,
    required this.foDishAr,
    required this.foPrice,
    required this.foPhoto,
    required this.drinksEn,
    required this.drinksAr,
    required this.totalPrice,
    this.createdAt,
    this.updatedAt,
  });

  factory ConstMenu.fromJson(Map<String, dynamic> json) {
    return ConstMenu(
      id: json['id'] ?? 0,
      hotelId: json['hotel_id'] ?? 0,
      typeEn: json['type_en'] ?? '',
      typeAr: json['type_ar'] ?? '',
      fDishEn: json['F_dish_en'] ?? '',
      fDishAr: json['F_dish_ar'] ?? '',
      fPrice: (json['F_price'] ?? 0).toDouble(),
      fPhoto: json['Fphoto'] ?? '',
      sDishEn: json['S_dish_en'] ?? '',
      sDishAr: json['S_dish_ar'] ?? '',
      sPrice: (json['S_price'] ?? 0).toDouble(),
      sPhoto: json['Sphoto'] ?? '',
      tDishEn: json['T_dish_en'] ?? '',
      tDishAr: json['T_dish_ar'] ?? '',
      tPrice: (json['T_price'] ?? 0).toDouble(),
      tPhoto: json['Tphoto'] ?? '',
      foDishEn: json['FO_dish_en'] ?? '',
      foDishAr: json['FO_dish_ar'] ?? '',
      foPrice: (json['FO_price'] ?? 0).toDouble(),
      foPhoto: json['FOphoto'] ?? '',
      drinksEn: json['drinks_en'] ?? '',
      drinksAr: json['drinks_ar'] ?? '',
      totalPrice: (json['total_price'] ?? 0).toDouble(),
      createdAt: json['created_at'] != null
          ? DateTime.parse(json['created_at'])
          : null,
      updatedAt: json['updated_at'] != null
          ? DateTime.parse(json['updated_at'])
          : null,
    );
  }
}
