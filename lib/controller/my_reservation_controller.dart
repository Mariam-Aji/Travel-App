import 'dart:convert';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:travel_app/models/my_reservation_model.dart';

class MyReservationController extends GetxController {
  var optionalList = RxList<MyReservationModel>();
  var constList = RxList<MyConstReservation>();
  var ticketList = RxList<MyTicketReservation>();
  RxBool loading = false.obs;
  MyReservationController({required this.userId});
  final String userId;
  @override
  void onInit() {
    super.onInit();
    getTrip();
    getconstTrip();
    getTicket();
  }

  Future<RxList<MyReservationModel>> getTrip() async {
    optionalList = RxList.empty();
    final response = await http.get(
      Uri.parse('http://192.168.137.1:8000/api/reservationsForUser/$userId'),
    );
    var data = jsonDecode(response.body.toString());
    print(response.statusCode);

    if (response.statusCode == 200) {
      var optional = data['reservations']['Optional Journy Reservations'];
      if (optional != null) {
        for (Map<String, dynamic> index in optional) {
          optionalList.add(MyReservationModel.fromJson(index));
        }
        loading.value = true;
        return optionalList;
      } else {
        loading.value = true;
        return optionalList;
      }
    } else {
      loading.value = false;
      return optionalList;
    }
  }

  String getImage(String imageUrl) {
    String response = 'http://192.168.137.1:8000/$imageUrl';

    return response;
  }

  Future<RxList<MyConstReservation>> getconstTrip() async {
    constList = RxList.empty();
    final response = await http.get(
      Uri.parse('http://192.168.137.1:8000/api/reservationsForUser/$userId'),
    );
    var data = jsonDecode(response.body.toString());
    print(response.statusCode);

    if (response.statusCode == 200) {
      var Const = data['reservations']['Const Trip Reservations'];
      if (Const != null) {
        for (Map<String, dynamic> index in Const) {
          constList.add(MyConstReservation.fromJson(index));
        }
        //  trip.value = true;
        return constList;
      } else {
        // trip.value = true;
        return constList;
      }
    } else {
      //  trip.value = false;
      return constList;
    }
  }

  Future<RxList<MyTicketReservation>> getTicket() async {
    ticketList = RxList.empty();
    final response = await http.get(
      Uri.parse('http://192.168.137.1:8000/api/reservationsForUser/$userId'),
    );
    var data = jsonDecode(response.body.toString());
    print(response.statusCode);

    if (response.statusCode == 200) {
      var ticket = data['reservations']['Ticket Reservations'];
      if (ticket != null) {
        for (Map<String, dynamic> index in ticket) {
          ticketList.add(MyTicketReservation.fromJson(index));
        }
        //  trip.value = true;
        return ticketList;
      } else {
        // trip.value = true;
        return ticketList;
      }
    } else {
      //  trip.value = false;
      return ticketList;
    }
  }

  void delete(String id, String token) async {
    loading.value = true;
    var response = await http.get(
      Uri.parse(
          'http://192.168.137.1:8000/api/cancellationReservationTicket/$id'),
      headers: {
        'Accept': 'application/json',
        'Authorization': 'Bearer $token',
        //'ngrok-skip-browser-warning': "33132"
      },
    );
    var js = jsonDecode(response.body);
    print(response.statusCode);
    if (response.statusCode == 200) {
      loading.value = false;

      Get.snackbar('Cancel Success', '${js['message']}');
    } else {
      loading.value = false;
      Get.snackbar('Cancel Failed', '${js['message']}');
    }
  }

  void deleteConst(String id, String token) async {
    loading.value = true;
    var response = await http.get(
      Uri.parse(
          'http://192.168.137.1:8000/api/cancellationReservationConstJourney/$id'),
      headers: {
        'Accept': 'application/json',
        'Authorization': 'Bearer $token',
        //'ngrok-skip-browser-warning': "33132"
      },
    );
    var js = jsonDecode(response.body);
    print(response.statusCode);
    if (response.statusCode == 200) {
      loading.value = false;

      Get.snackbar('Cancel Success', '${js['message']}');
    } else {
      loading.value = false;
      Get.snackbar('Cancel Failed', '${js['message']}');
    }
  }

  void deleteOptional(String id, String token) async {
    loading.value = true;
    var response = await http.get(
      Uri.parse(
          'http://192.168.137.1:8000/api/cancellationReservationOptionalJourney/$id'),
      headers: {
        'Accept': 'application/json',
        'Authorization': 'Bearer $token',
        //'ngrok-skip-browser-warning': "33132"
      },
    );
    var js = jsonDecode(response.body);
    print(response.statusCode);
    if (response.statusCode == 200) {
      loading.value = false;

      Get.snackbar('Cancel Success', '${js['message']}');
    } else {
      loading.value = false;
      Get.snackbar('Cancel Failed', '${js['message']}');
    }
  }
}
