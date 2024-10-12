import 'dart:convert';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:travel_app/models/popular_trip_model.dart';

class PopularController extends GetxController {
  PopularController({required this.token});
  final String token;
  var popularList = RxList<PopularTripModel>();

  @override
  void onInit() {
    super.onInit();
    getTrip();
  }

  Future<RxList<PopularTripModel>> getTrip() async {
    final response = await http.get(
      Uri.parse(
          'http://192.168.137.1:8000/api/Highest_rating'),
      headers: {
        'Accept': 'application/json',
        'Authorization': 'Bearer $token',

        //'ngrok-skip-browser-warning': "32132"
      },
    );
    var data = jsonDecode(response.body.toString());
    print(response.statusCode);

    if (response.statusCode == 200) {
      for (Map<String, dynamic> index in data) {
        popularList.add(PopularTripModel.fromJson(index));
      }
      return popularList;
    } else {
      return popularList;
    }
  }

  String getImage(String imageUrl) {
    String response = 'hhttp://192.168.137.1:8000/$imageUrl';

    return response;
  }
}
