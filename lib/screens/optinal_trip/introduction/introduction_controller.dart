import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:travel_app/core/server/helper_api.dart';
import 'package:travel_app/core/server/parse_response.dart';
import 'package:travel_app/core/server/server_config.dart';
import 'package:travel_app/models/hotel.dart';
import 'package:travel_app/models/transport.dart';
import 'package:travel_app/models/trip.dart';

class IntroductionController extends GetxController {
  RxBool isLoading = false.obs;
  late final Trip trip;

  List<Transport> transportList = [];
  List<Hotel> hotelsList = [];
  final TextEditingController numberOfTicketsController =
      TextEditingController();

  RxInt selectedTransport = 0.obs;
  @override
  void onInit() {
    // hotelId=Get.arguments;
    trip = Trip.fromJson(
      {
        "id": 1,
        "destination_en": "paris",
        "destination_ar": "باريس",
        "expiry_Date": "2024-06-20",
        "fly_date": "2024-06-21",
        "fly_time": "",
        "Number_of_flight_hours": "",
        "price": null,
        "available_seats": "8",
        "hotels": "we have list of Available Hotels,you Can chose if you want",
        "transporation":
            " we have (cars ,planes,boats) if you want you can chose",
        "Food": "you can take food from the hotel restaurants you have chosen",
        "season_id": 1,
        "section_id": 1,
        "type_ticket_id": 4,
        "continents_id": 1,
        "Tripschadual": "please chose your schadual",
        "journy_photo1": "",
        "journy_photo2": "",
        "journy_photo3": "",
        "created_at": null,
        "updated_at": null
      },
    );
    getTransports();
    super.onInit();
  }

  getTransports() async {
    Either<ErrorResponse, Map<String, dynamic>> response;

    response = await ApiHelper.makeRequest(
      targetRout:
          '${ServerConstApis.getSpecificTransportationsOptional}/${trip.id}',
      method: "post",
      // token: token,
    );

    dynamic handlingResponse = response.fold((l) => l, (r) => r);
    if (handlingResponse is ErrorResponse) {
    } else {
      List<dynamic> categoryListJson =
          handlingResponse['Available transportation in similar destination:'];
      transportList.addAll(categoryListJson
          .map((jsonItem) => Transport.fromJson(jsonItem))
          .toList());

      update();
    }
  }

  optionalJournyReservation() async {
    Either<ErrorResponse, Map<String, dynamic>> response;

    response = await ApiHelper.makeRequest(
      targetRout: '${ServerConstApis.optionalJournyReservation}/',
      method: "GET",
      // token: token,
    );

    dynamic handlingResponse = response.fold((l) => l, (r) => r);
    if (handlingResponse is ErrorResponse) {
    } else {
      Get.back();
    }
  }

  selectTransport(int transportId) {
    selectedTransport.value = transportId;
  }
}
