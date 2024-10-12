import 'dart:convert';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;

import 'package:travel_app/models/recent_trip_model.dart';

class RecentTripController extends GetxController {
  var recenttripList = RxList<RecentTripModel>();

  @override
  void onInit() {
    super.onInit();
    getTrip();
  }

  Future<RxList<RecentTripModel>> getTrip() async {
    final response = await http.post(
        Uri.parse(
            'http://192.168.137.1:8000/api/lastjournies'),
        headers: {
          'Accept': 'application/json',
         // 'ngrok-skip-browser-warning': '32933'
        },
        body: <String, String>{
          'lang': 'en'
        });
    var data = jsonDecode(response.body.toString());
    print(response.statusCode);

    if (response.statusCode == 200) {
      for (Map<String, dynamic> index in data) {
        recenttripList.add(RecentTripModel.fromJson(index));
      }
      return recenttripList;
    } else {
      return recenttripList;
    }
  }

  String getImage(String imageUrl) {
    String response = 'http://192.168.137.1:8000/$imageUrl';

    return response;
  }
}
