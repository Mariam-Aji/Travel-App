import 'dart:convert';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:travel_app/models/sections.dart';

class SectionsController extends GetxController {
  var sectionsList = RxList<Sections>();

  @override
  void onInit() {
    super.onInit();
    getSections();
  }

  Future<RxList<Sections>> getSections() async {
    final response = await http.post(
        Uri.parse('http://192.168.137.1:8000/api/sections'),
        headers: {'Accept': 'application/json',
        //'ngrok-skip-browser-warning': '39132'
        },
           body:<String, String>{
          'lang':'en'
        });
    var data = jsonDecode(response.body.toString());
    if (response.statusCode == 200) {
      for (Map<String, dynamic> index in data) {
        sectionsList.add(Sections.fromJson(index));
      }
      return sectionsList;
    } else {
      return sectionsList;
    }
  }
}
