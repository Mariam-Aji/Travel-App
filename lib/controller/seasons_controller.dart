import 'dart:convert';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:travel_app/models/seasons.dart';

class SeasonsController extends GetxController {
  var seasonsList = RxList<Seasons>();

  @override
  void onInit() {
    super.onInit();
    getSeasons();
  }

  Future<RxList<Seasons>> getSeasons() async {
    final response = await http.post(
        Uri.parse('http://192.168.137.1:8000/api/seasons'),
        headers: {'Accept': 'application/json',
        //'ngrok-skip-browser-warning': '33832'
        },
        body: <String, String>{'lang': 'en'});
    var data = jsonDecode(response.body.toString());
    if (response.statusCode == 200) {
      for (Map<String, dynamic> index in data) {
        seasonsList.add(Seasons.fromJson(index));
      }
      return seasonsList;
    } else {
      return seasonsList;
    }
  }
}
