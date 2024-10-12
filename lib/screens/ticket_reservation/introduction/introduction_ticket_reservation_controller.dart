import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:travel_app/core/server/helper_api.dart';
import 'package:travel_app/core/server/parse_response.dart';
import 'package:travel_app/core/server/server_config.dart';
import 'package:travel_app/models/ticket_trip.dart';
import 'package:travel_app/models/transport.dart';

class IntroductionTicketReservationController extends GetxController {
  List<Transport> transportList = [];
  RxInt selectedTransport = 0.obs;
  int hotelId = 1;
  TextEditingController numberOFTicketsController = TextEditingController();
  late TicketTrip ticketTrip;
  @override
  void onInit() {
    // ticketTrip=Get.arguments;
    ticketTrip = TicketTrip.fromJson({
      "id": 1,
      "destination": "hj",
      "expiry_Date": "2024-06-08",
      "fly_date": "2024-06-10",
      "fly_time": "2:00 PM",
      "Number_of_flight_hours": "9",
      "transportaion_id": "1",
      "price": 1000000,
      "available_seats": "7",
      "continents_id": 2,
      "type_ticket_id": 3,
      "journy_photo1": "photos/ioxvtmma7WX92H9MO9hHfHKlYmvHwaApB21WaqJb.bmp",
      "journy_photo2": "photos/rICAuLKxq1BO50BzANEFNRfqVA7o9yJRXoKaEhWD.bmp",
      "journy_photo3": "photos/VnpqQFb6bkp01B4vCkWrZVtJCyVsRjkbcHVoMMm9.bmp",
      "created_at": "2024-05-24T04:18:07.000000Z",
      "updated_at": "2024-05-24T08:44:33.000000Z"
    });
    getTransports();
    // transportList.add(Transport.fromJson(transportEx));
    super.onInit();
  }

  getTransports() async {
    Either<ErrorResponse, Map<String, dynamic>> response;

    response = await ApiHelper.makeRequest(
      targetRout:
          '${ServerConstApis.getSpecificTransportationsTicket}/${ticketTrip.id}',
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

  choiceTransport(int transportId) async {
    Either<ErrorResponse, Map<String, dynamic>> response;

    response = await ApiHelper.makeRequest(
      targetRout: '${ServerConstApis.choseTransportationticket}/$transportId',
      method: "GET",
      // token: token,
    );

    dynamic handlingResponse = response.fold((l) => l, (r) => r);
    if (handlingResponse is ErrorResponse) {
    } else {
      Get.back();
      update();
    }
  }

  selectTransport(int transportId) {
    selectedTransport.value = transportId;
  }
}

Map<String, dynamic> transportEx = {
  "id": 1,
  "country_Name": "paris",
  "transportation_Name": "kj",
  "price": 8000,
  "photo1": "hj",
  "photo2": "jk",
  "photo3": "kj",
  "created_at": null,
  "updated_at": null
};
