import 'dart:convert';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

import 'package:travel_app/models/ticket_trip.dart';

class TicketController extends GetxController {
  TicketController({
    required this.contientid,
  });
  final String contientid;

  var ticketList = RxList<TicketTrip>();

  @override
  void onInit() {
    super.onInit();
    getTrip();
  }

  Future<RxList<TicketTrip>> getTrip() async {
    final response = await http.post(
        Uri.parse(
            'http://192.168.137.1:8000/api/DisplayTripsDependonFoTicket/$contientid/3'),
        headers: {'Accept': 'application/json',
        //'ngrok-skip-browser-warning': '38832'
        },
        body: <String, String>{'lang': 'en'});
    var data = jsonDecode(response.body.toString());
    print(response.statusCode);
    print('con{$contientid}');

    if (response.statusCode == 201) {
      for (Map<String, dynamic> index in data) {
        ticketList.add(TicketTrip.fromJson(index));
      }
      return ticketList;
    } else {
      return ticketList;
    }
  }

  String getImage(String imageUrl) {
    String response = 'http://192.168.137.1:8000/$imageUrl';
    return response;
  }
}
