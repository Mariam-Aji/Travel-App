import 'dart:convert';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:travel_app/models/ticket_type_model.dart';

class TicketTypeController extends GetxController {
  var ticketTypeList = RxList<TicketTypeModel>();

  @override
  void onInit() {
    super.onInit();
    getTicket();
  }

  Future<RxList<TicketTypeModel>> getTicket() async {
    final response = await http.post(
        Uri.parse('http://192.168.137.1:8000/api/typeTicket'),
        headers: {
          'Accept': 'application/json',
          //'ngrok-skip-browser-warning': '35532'
        },
        body: <String, String>{
          'lang': 'en'
        });
    var data = jsonDecode(response.body.toString());
    if (response.statusCode == 200) {
      for (Map<String, dynamic> index in data) {
        ticketTypeList.add(TicketTypeModel.fromJson(index));
      }
      return ticketTypeList;
    } else {
      return ticketTypeList;
    }
  }
}
