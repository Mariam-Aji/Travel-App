class ServerConstApis {
  static String baseAPI = 'http://192.168.137.1:8000';
  static String baseAPIForImages = 'http://192.168.137.1:8000/';

  static String getSpecificHotels = '$baseAPI/api/GetSpecificHotels';
  static String getSpecificTransportationsOptional =
      '$baseAPI/api/GetSpecificTransportationsOptional';
  static String selectHotel = '$baseAPI/api/selectHotel';
  static String selectTransport = '$baseAPI/api/selectHotel';
  static String optionalJournyReservation =
      '$baseAPI/api/OptionalJournyReservation';
  static String displaySchadualsForOptional =
      '$baseAPI/api/displaySchadualsForOptional';

  ////////////// ticket reservation
  static String getSpecificTransportationsTicket =
      '$baseAPI/api/GetSpecificTransportationsTicket';
  static String choseTransportationticket =
      '$baseAPI/api/choseTransportationticket';

  /// meal
  static String GetavailableReservation =
      '$baseAPI/api/GetavailableReservation';
  static String chosereservation = '$baseAPI/api/chosereservation';
  static String GetRestaurantrelatedToReservedHotel =
      '$baseAPI/api/GetRestaurantrelatedToReservedHotel';

  static String choseDish = '$baseAPI/api/choseDish';
}
