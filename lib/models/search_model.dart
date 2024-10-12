
class OptionaltripSearchModel {
  int? id;
  String? destinationEn;
  String? destinationAr;
  String? expiryDate;
  String? flyDate;
  String? flyTime;
  String? numberOfFlightHours;
  int? price;
  String? availableSeats;
  String? hotels;
  String? transporation;
  String? food;
  int? seasonId;
  int? sectionId;
  int? typeTicketId;
  int? continentsId;
  String? tripschadual;
  String? journyPhoto1;
  String? journyPhoto2;
  String? journyPhoto3;
  String? createdAt;
  String? updatedAt;

  OptionaltripSearchModel({this.id, this.destinationEn, this.destinationAr, this.expiryDate, this.flyDate, this.flyTime, this.numberOfFlightHours, this.price, this.availableSeats, this.hotels, this.transporation, this.food, this.seasonId, this.sectionId, this.typeTicketId, this.continentsId, this.tripschadual, this.journyPhoto1, this.journyPhoto2, this.journyPhoto3, this.createdAt, this.updatedAt});

  OptionaltripSearchModel.fromJson(Map<String, dynamic> json) {
    id = json["id"];
    destinationEn = json["destination_en"];
    destinationAr = json["destination_ar"];
    expiryDate = json["expiry_Date"];
    flyDate = json["fly_date"];
    flyTime = json["fly_time"];
    numberOfFlightHours = json["Number_of_flight_hours"];
    price = json["price"];
    availableSeats = json["available_seats"];
    hotels = json["hotels"];
    transporation = json["transporation"];
    food = json["Food"];
    seasonId = json["season_id"];
    sectionId = json["section_id"];
    typeTicketId = json["type_ticket_id"];
    continentsId = json["continents_id"];
    tripschadual = json["Tripschadual"];
    journyPhoto1 = json["journy_photo1"];
    journyPhoto2 = json["journy_photo2"];
    journyPhoto3 = json["journy_photo3"];
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
    _data["hotels"] = hotels;
    _data["transporation"] = transporation;
    _data["Food"] = food;
    _data["season_id"] = seasonId;
    _data["section_id"] = sectionId;
    _data["type_ticket_id"] = typeTicketId;
    _data["continents_id"] = continentsId;
    _data["Tripschadual"] = tripschadual;
    _data["journy_photo1"] = journyPhoto1;
    _data["journy_photo2"] = journyPhoto2;
    _data["journy_photo3"] = journyPhoto3;
    _data["created_at"] = createdAt;
    _data["updated_at"] = updatedAt;
    return _data;
  }
}

class ConstSearch {
  int? id;
  String? destinationEn;
  String? destinationAr;
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
  dynamic totalPrice;
  int? avg;
  String? photo1;
  String? photo2;
  String? photo3;
  String? createdAt;
  String? updatedAt;

  ConstSearch({this.id, this.destinationEn, this.destinationAr, this.expiryDate, this.flyDate, this.flyTime, this.numberOfFlightHours, this.price, this.availableSeats, this.hotelId, this.transportationId, this.seasonId, this.sectionId, this.continentsId, this.typeTicketId, this.tripschadualId, this.descripyionEn, this.descripyionAr, this.totalPrice, this.avg, this.photo1, this.photo2, this.photo3, this.createdAt, this.updatedAt});

  ConstSearch.fromJson(Map<String, dynamic> json) {
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

class TicketSearch {
  int? id;
  String? destinationEn;
  String? destinationAr;
  String? expiryDate;
  String? flyDate;
  String? flyTime;
  String? numberOfFlightHours;
  int? price;
  String? availableSeats;
  int? continentsId;
  int? typeTicketId;
  String? journyPhoto1;
  String? journyPhoto2;
  String? journyPhoto3;
  String? createdAt;
  String? updatedAt;

  TicketSearch({this.id, this.destinationEn, this.destinationAr, this.expiryDate, this.flyDate, this.flyTime, this.numberOfFlightHours, this.price, this.availableSeats, this.continentsId, this.typeTicketId, this.journyPhoto1, this.journyPhoto2, this.journyPhoto3, this.createdAt, this.updatedAt});

  TicketSearch.fromJson(Map<String, dynamic> json) {
    id = json["id"];
    destinationEn = json["destination_en"];
    destinationAr = json["destination_ar"];
    expiryDate = json["expiry_Date"];
    flyDate = json["fly_date"];
    flyTime = json["fly_time"];
    numberOfFlightHours = json["Number_of_flight_hours"];
    price = json["price"];
    availableSeats = json["available_seats"];
    continentsId = json["continents_id"];
    typeTicketId = json["type_ticket_id"];
    journyPhoto1 = json["journy_photo1"];
    journyPhoto2 = json["journy_photo2"];
    journyPhoto3 = json["journy_photo3"];
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
    _data["continents_id"] = continentsId;
    _data["type_ticket_id"] = typeTicketId;
    _data["journy_photo1"] = journyPhoto1;
    _data["journy_photo2"] = journyPhoto2;
    _data["journy_photo3"] = journyPhoto3;
    _data["created_at"] = createdAt;
    _data["updated_at"] = updatedAt;
    return _data;
  }
}

class ResturentSearch {
  int? id;
  int? hotelId;
  String? typeEn;
  String? typeAr;
  String? fDishEn;
  String? fDishAr;
  int? fPrice;
  String? fphoto;
  String? sDishEn;
  String? sDishAr;
  int? sPrice;
  String? sphoto;
  String? tDishEn;
  String? tDishAr;
  int? tPrice;
  String? tphoto;
  String? foDishEn;
  String? foDishAr;
  int? foPrice;
  String? fOphoto;
  String? drinksEn;
  int? drinksPrice;
  String? drinksAr;
  int? totalPrice;
  String? createdAt;
  String? updatedAt;

  ResturentSearch({this.id, this.hotelId, this.typeEn, this.typeAr, this.fDishEn, this.fDishAr, this.fPrice, this.fphoto, this.sDishEn, this.sDishAr, this.sPrice, this.sphoto, this.tDishEn, this.tDishAr, this.tPrice, this.tphoto, this.foDishEn, this.foDishAr, this.foPrice, this.fOphoto, this.drinksEn, this.drinksPrice, this.drinksAr, this.totalPrice, this.createdAt, this.updatedAt});

  ResturentSearch.fromJson(Map<String, dynamic> json) {
    id = json["id"];
    hotelId = json["hotel_id"];
    typeEn = json["type_en"];
    typeAr = json["type_ar"];
    fDishEn = json["F_dish_en"];
    fDishAr = json["F_dish_ar"];
    fPrice = json["F_price"];
    fphoto = json["Fphoto"];
    sDishEn = json["S_dish_en"];
    sDishAr = json["S_dish_ar"];
    sPrice = json["S_price"];
    sphoto = json["Sphoto"];
    tDishEn = json["T_dish_en"];
    tDishAr = json["T_dish_ar"];
    tPrice = json["T_price"];
    tphoto = json["Tphoto"];
    foDishEn = json["FO_dish_en"];
    foDishAr = json["FO_dish_ar"];
    foPrice = json["FO_price"];
    fOphoto = json["FOphoto"];
    drinksEn = json["drinks_en"];
    drinksPrice = json["drinks_price"];
    drinksAr = json["drinks_ar"];
    totalPrice = json["total_price"];
    createdAt = json["created_at"];
    updatedAt = json["updated_at"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["id"] = id;
    _data["hotel_id"] = hotelId;
    _data["type_en"] = typeEn;
    _data["type_ar"] = typeAr;
    _data["F_dish_en"] = fDishEn;
    _data["F_dish_ar"] = fDishAr;
    _data["F_price"] = fPrice;
    _data["Fphoto"] = fphoto;
    _data["S_dish_en"] = sDishEn;
    _data["S_dish_ar"] = sDishAr;
    _data["S_price"] = sPrice;
    _data["Sphoto"] = sphoto;
    _data["T_dish_en"] = tDishEn;
    _data["T_dish_ar"] = tDishAr;
    _data["T_price"] = tPrice;
    _data["Tphoto"] = tphoto;
    _data["FO_dish_en"] = foDishEn;
    _data["FO_dish_ar"] = foDishAr;
    _data["FO_price"] = foPrice;
    _data["FOphoto"] = fOphoto;
    _data["drinks_en"] = drinksEn;
    _data["drinks_price"] = drinksPrice;
    _data["drinks_ar"] = drinksAr;
    _data["total_price"] = totalPrice;
    _data["created_at"] = createdAt;
    _data["updated_at"] = updatedAt;
    return _data;
  }
}

class HotelSearch {
  int? id;
  String? countryNameEn;
  String? countryNameAr;
  String? hotelNameEn;
  String? hotelNameAr;
  String? typeReservationEn;
  String? typeReservationAr;
  String? descriptionEn;
  String? descriptionAr;
  int? price;
  String? photo1;
  String? photo2;
  String? photo3;
  String? createdAt;
  String? updatedAt;

  HotelSearch({this.id, this.countryNameEn, this.countryNameAr, this.hotelNameEn, this.hotelNameAr, this.typeReservationEn, this.typeReservationAr, this.descriptionEn, this.descriptionAr, this.price, this.photo1, this.photo2, this.photo3, this.createdAt, this.updatedAt});

  HotelSearch.fromJson(Map<String, dynamic> json) {
    id = json["id"];
    countryNameEn = json["country_Name_en"];
    countryNameAr = json["country_Name_ar"];
    hotelNameEn = json["hotel_Name_en"];
    hotelNameAr = json["hotel_Name_ar"];
    typeReservationEn = json["Type_Reservation_en"];
    typeReservationAr = json["Type_Reservation_ar"];
    descriptionEn = json["description_en"];
    descriptionAr = json["description_ar"];
    price = json["price"];
    photo1 = json["photo1"];
    photo2 = json["photo2"];
    photo3 = json["photo3"];
    createdAt = json["created_at"];
    updatedAt = json["updated_at"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["id"] = id;
    _data["country_Name_en"] = countryNameEn;
    _data["country_Name_ar"] = countryNameAr;
    _data["hotel_Name_en"] = hotelNameEn;
    _data["hotel_Name_ar"] = hotelNameAr;
    _data["Type_Reservation_en"] = typeReservationEn;
    _data["Type_Reservation_ar"] = typeReservationAr;
    _data["description_en"] = descriptionEn;
    _data["description_ar"] = descriptionAr;
    _data["price"] = price;
    _data["photo1"] = photo1;
    _data["photo2"] = photo2;
    _data["photo3"] = photo3;
    _data["created_at"] = createdAt;
    _data["updated_at"] = updatedAt;
    return _data;
  }
}

class SchadualSearch {
  int? id;
  String? destinationEn;
  String? destinationAr;
  String? flyDate;
  String? flyTime;
  String? time1;
  String? firstDayPlace1En;
  String? firstDayPlace1Ar;
  String? fristDayPhoto1;
  String? time2;
  String? firstDayPlace2En;
  String? firstDayPlace2Ar;
  String? fristDayPhoto2;
  String? time3;
  String? firstDayPlace3En;
  String? firstDayPlace3Ar;
  String? fristDayPhoto3;
  int? priceFor1Day;
  String? time4;
  String? secondDayPlace1En;
  String? secondDayPlace1Ar;
  String? secondDayPhoto1;
  String? time5;
  String? secondDayPlace2En;
  String? secondDayPlace2Ar;
  String? secondDayPhoto2;
  String? time6;
  String? secondDayPlace3En;
  String? secondDayPlace3Ar;
  String? secondDayPhoto3;
  int? priceFor2Day;
  String? time7;
  String? thirdDayPlace1En;
  String? thirdDayPlace1Ar;
  String? thirdDayPhoto1;
  String? time8;
  String? thirdDayPlace2En;
  String? thirdDayPlace2Ar;
  String? thirdDayPhoto2;
  String? time9;
  String? thirdDayPlace3En;
  String? thirdDayPlace3Ar;
  String? thirdDayPhoto3;
  int? priceFor3Day;
  String? time10;
  String? fourthDayPlace1En;
  String? fourthDayPlace1Ar;
  String? fourthDayPhoto1;
  String? time11;
  String? fourthDayPlace2En;
  String? fourthDayPlace2Ar;
  String? fourthDayPhoto2;
  String? time12;
  String? fourthDayPlace3En;
  String? fourthDayPlace3Ar;
  String? fourthDayPhoto3;
  int? priceFor4Day;
  String? time13;
  String? fifthDayPlace1En;
  String? fifthDayPlace1Ar;
  String? fifthDayPhoto1;
  String? time14;
  String? fifthDayPlace2En;
  dynamic fifthDayPlace2Ar;
  String? fifthDayPhoto2;
  String? time15;
  String? fifthDayPlace3En;
  String? fifthDayPlace3Ar;
  String? fifthDayPhoto3;
  int? priceFor5Day;
  int? totalprice;
  String? createdAt;
  String? updatedAt;

  SchadualSearch({this.id, this.destinationEn, this.destinationAr, this.flyDate, this.flyTime, this.time1, this.firstDayPlace1En, this.firstDayPlace1Ar, this.fristDayPhoto1, this.time2, this.firstDayPlace2En, this.firstDayPlace2Ar, this.fristDayPhoto2, this.time3, this.firstDayPlace3En, this.firstDayPlace3Ar, this.fristDayPhoto3, this.priceFor1Day, this.time4, this.secondDayPlace1En, this.secondDayPlace1Ar, this.secondDayPhoto1, this.time5, this.secondDayPlace2En, this.secondDayPlace2Ar, this.secondDayPhoto2, this.time6, this.secondDayPlace3En, this.secondDayPlace3Ar, this.secondDayPhoto3, this.priceFor2Day, this.time7, this.thirdDayPlace1En, this.thirdDayPlace1Ar, this.thirdDayPhoto1, this.time8, this.thirdDayPlace2En, this.thirdDayPlace2Ar, this.thirdDayPhoto2, this.time9, this.thirdDayPlace3En, this.thirdDayPlace3Ar, this.thirdDayPhoto3, this.priceFor3Day, this.time10, this.fourthDayPlace1En, this.fourthDayPlace1Ar, this.fourthDayPhoto1, this.time11, this.fourthDayPlace2En, this.fourthDayPlace2Ar, this.fourthDayPhoto2, this.time12, this.fourthDayPlace3En, this.fourthDayPlace3Ar, this.fourthDayPhoto3, this.priceFor4Day, this.time13, this.fifthDayPlace1En, this.fifthDayPlace1Ar, this.fifthDayPhoto1, this.time14, this.fifthDayPlace2En, this.fifthDayPlace2Ar, this.fifthDayPhoto2, this.time15, this.fifthDayPlace3En, this.fifthDayPlace3Ar, this.fifthDayPhoto3, this.priceFor5Day, this.totalprice, this.createdAt, this.updatedAt});

  SchadualSearch.fromJson(Map<String, dynamic> json) {
    id = json["id"];
    destinationEn = json["destination_en"];
    destinationAr = json["destination_ar"];
    flyDate = json["fly_date"];
    flyTime = json["fly_time"];
    time1 = json["time1"];
    firstDayPlace1En = json["firstDayPlace1_en"];
    firstDayPlace1Ar = json["firstDayPlace1_ar"];
    fristDayPhoto1 = json["frist_DAY_PHOTO1"];
    time2 = json["time2"];
    firstDayPlace2En = json["firstDayPlace2_en"];
    firstDayPlace2Ar = json["firstDayPlace2_ar"];
    fristDayPhoto2 = json["frist_DAY_PHOTO2"];
    time3 = json["time3"];
    firstDayPlace3En = json["firstDayPlace3_en"];
    firstDayPlace3Ar = json["firstDayPlace3_ar"];
    fristDayPhoto3 = json["frist_DAY_PHOTO3"];
    priceFor1Day = json["priceFor1Day"];
    time4 = json["time4"];
    secondDayPlace1En = json["secondDayPlace1_en"];
    secondDayPlace1Ar = json["secondDayPlace1_ar"];
    secondDayPhoto1 = json["second_DAY_PHOTO1"];
    time5 = json["time5"];
    secondDayPlace2En = json["secondDayPlace2_en"];
    secondDayPlace2Ar = json["secondDayPlace2_ar"];
    secondDayPhoto2 = json["second_DAY_PHOTO2"];
    time6 = json["time6"];
    secondDayPlace3En = json["secondDayPlace3_en"];
    secondDayPlace3Ar = json["secondDayPlace3_ar"];
    secondDayPhoto3 = json["second_DAY_PHOTO3"];
    priceFor2Day = json["priceFor2Day"];
    time7 = json["time7"];
    thirdDayPlace1En = json["ThirdDayPlace1_en"];
    thirdDayPlace1Ar = json["ThirdDayPlace1_ar"];
    thirdDayPhoto1 = json["Third_DAY_PHOTO1"];
    time8 = json["time8"];
    thirdDayPlace2En = json["ThirdDayPlace2_en"];
    thirdDayPlace2Ar = json["ThirdDayPlace2_ar"];
    thirdDayPhoto2 = json["Third_DAY_PHOTO2"];
    time9 = json["time9"];
    thirdDayPlace3En = json["ThirdDayPlace3_en"];
    thirdDayPlace3Ar = json["ThirdDayPlace3_ar"];
    thirdDayPhoto3 = json["Third_DAY_PHOTO3"];
    priceFor3Day = json["priceFor3Day"];
    time10 = json["time10"];
    fourthDayPlace1En = json["FourthDayPlace1_en"];
    fourthDayPlace1Ar = json["FourthDayPlace1_ar"];
    fourthDayPhoto1 = json["Fourth_DAY_PHOTO1"];
    time11 = json["time11"];
    fourthDayPlace2En = json["FourthDayPlace2_en"];
    fourthDayPlace2Ar = json["FourthDayPlace2_ar"];
    fourthDayPhoto2 = json["Fourth_DAY_PHOTO2"];
    time12 = json["time12"];
    fourthDayPlace3En = json["FourthDayPlace3_en"];
    fourthDayPlace3Ar = json["FourthDayPlace3_ar"];
    fourthDayPhoto3 = json["Fourth_DAY_PHOTO3"];
    priceFor4Day = json["priceFor4Day"];
    time13 = json["time13"];
    fifthDayPlace1En = json["FifthDayPlace1_en"];
    fifthDayPlace1Ar = json["FifthDayPlace1_ar"];
    fifthDayPhoto1 = json["Fifth_DAY_PHOTO1"];
    time14 = json["time14"];
    fifthDayPlace2En = json["FifthDayPlace2_en"];
    fifthDayPlace2Ar = json["FifthDayPlace2_ar"];
    fifthDayPhoto2 = json["Fifth_DAY_PHOTO2"];
    time15 = json["time15"];
    fifthDayPlace3En = json["FifthDayPlace3_en"];
    fifthDayPlace3Ar = json["FifthDayPlace3_ar"];
    fifthDayPhoto3 = json["Fifth_DAY_PHOTO3"];
    priceFor5Day = json["priceFor5Day"];
    totalprice = json["Totalprice"];
    createdAt = json["created_at"];
    updatedAt = json["updated_at"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["id"] = id;
    _data["destination_en"] = destinationEn;
    _data["destination_ar"] = destinationAr;
    _data["fly_date"] = flyDate;
    _data["fly_time"] = flyTime;
    _data["time1"] = time1;
    _data["firstDayPlace1_en"] = firstDayPlace1En;
    _data["firstDayPlace1_ar"] = firstDayPlace1Ar;
    _data["frist_DAY_PHOTO1"] = fristDayPhoto1;
    _data["time2"] = time2;
    _data["firstDayPlace2_en"] = firstDayPlace2En;
    _data["firstDayPlace2_ar"] = firstDayPlace2Ar;
    _data["frist_DAY_PHOTO2"] = fristDayPhoto2;
    _data["time3"] = time3;
    _data["firstDayPlace3_en"] = firstDayPlace3En;
    _data["firstDayPlace3_ar"] = firstDayPlace3Ar;
    _data["frist_DAY_PHOTO3"] = fristDayPhoto3;
    _data["priceFor1Day"] = priceFor1Day;
    _data["time4"] = time4;
    _data["secondDayPlace1_en"] = secondDayPlace1En;
    _data["secondDayPlace1_ar"] = secondDayPlace1Ar;
    _data["second_DAY_PHOTO1"] = secondDayPhoto1;
    _data["time5"] = time5;
    _data["secondDayPlace2_en"] = secondDayPlace2En;
    _data["secondDayPlace2_ar"] = secondDayPlace2Ar;
    _data["second_DAY_PHOTO2"] = secondDayPhoto2;
    _data["time6"] = time6;
    _data["secondDayPlace3_en"] = secondDayPlace3En;
    _data["secondDayPlace3_ar"] = secondDayPlace3Ar;
    _data["second_DAY_PHOTO3"] = secondDayPhoto3;
    _data["priceFor2Day"] = priceFor2Day;
    _data["time7"] = time7;
    _data["ThirdDayPlace1_en"] = thirdDayPlace1En;
    _data["ThirdDayPlace1_ar"] = thirdDayPlace1Ar;
    _data["Third_DAY_PHOTO1"] = thirdDayPhoto1;
    _data["time8"] = time8;
    _data["ThirdDayPlace2_en"] = thirdDayPlace2En;
    _data["ThirdDayPlace2_ar"] = thirdDayPlace2Ar;
    _data["Third_DAY_PHOTO2"] = thirdDayPhoto2;
    _data["time9"] = time9;
    _data["ThirdDayPlace3_en"] = thirdDayPlace3En;
    _data["ThirdDayPlace3_ar"] = thirdDayPlace3Ar;
    _data["Third_DAY_PHOTO3"] = thirdDayPhoto3;
    _data["priceFor3Day"] = priceFor3Day;
    _data["time10"] = time10;
    _data["FourthDayPlace1_en"] = fourthDayPlace1En;
    _data["FourthDayPlace1_ar"] = fourthDayPlace1Ar;
    _data["Fourth_DAY_PHOTO1"] = fourthDayPhoto1;
    _data["time11"] = time11;
    _data["FourthDayPlace2_en"] = fourthDayPlace2En;
    _data["FourthDayPlace2_ar"] = fourthDayPlace2Ar;
    _data["Fourth_DAY_PHOTO2"] = fourthDayPhoto2;
    _data["time12"] = time12;
    _data["FourthDayPlace3_en"] = fourthDayPlace3En;
    _data["FourthDayPlace3_ar"] = fourthDayPlace3Ar;
    _data["Fourth_DAY_PHOTO3"] = fourthDayPhoto3;
    _data["priceFor4Day"] = priceFor4Day;
    _data["time13"] = time13;
    _data["FifthDayPlace1_en"] = fifthDayPlace1En;
    _data["FifthDayPlace1_ar"] = fifthDayPlace1Ar;
    _data["Fifth_DAY_PHOTO1"] = fifthDayPhoto1;
    _data["time14"] = time14;
    _data["FifthDayPlace2_en"] = fifthDayPlace2En;
    _data["FifthDayPlace2_ar"] = fifthDayPlace2Ar;
    _data["Fifth_DAY_PHOTO2"] = fifthDayPhoto2;
    _data["time15"] = time15;
    _data["FifthDayPlace3_en"] = fifthDayPlace3En;
    _data["FifthDayPlace3_ar"] = fifthDayPlace3Ar;
    _data["Fifth_DAY_PHOTO3"] = fifthDayPhoto3;
    _data["priceFor5Day"] = priceFor5Day;
    _data["Totalprice"] = totalprice;
    _data["created_at"] = createdAt;
    _data["updated_at"] = updatedAt;
    return _data;
  }
}