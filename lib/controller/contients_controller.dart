import 'dart:convert';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:travel_app/login_screen.dart';
import 'package:travel_app/models/contients.dart';
import 'package:travel_app/sinup_screen.dart';

class ContientsController extends GetxController {
  ContientsController(this.token);
  final String token;
  var contientsList = RxList<Contients>();

  @override
  void onInit() {
    super.onInit();
    getContient();
  }

  void Delete(String fcmtoken) async {
    var response = await http.get(
      Uri.parse(
          'http://192.168.137.1:8000/api/deleteAccount'),
      headers: {'Accept': 'application/json', 
      'Authorization': 'Bearer $token'},
    );
    var js = jsonDecode(response.body);
    print(response.statusCode);
    if (response.statusCode == 200) {
      Get.to(signup(fcmtoken.toString()));
    }
  }

  void logout(String fcmtoken) async {
    var response = await http.get(
      Uri.parse('http://192.168.137.1:8000/api/logout'),
      headers: {'Accept': 'application/json', 'Authorization': 'Bearer $token'},
    );
    var js = jsonDecode(response.body);
    print(response.statusCode);
    if (response.statusCode == 200) {
      Get.to(Login(fcmtoken.toString()));
    }
  }
  

  Future<RxList<Contients>> getContient() async {
    final response = await http.post(
        Uri.parse('http://192.168.137.1:8000/api/contients'),
        headers: {
          'Accept': 'application/json',
          //'ngrok-skip-browser-warning': '33132'
        },
        body: <String, String>{
          'lang': 'en'
        });
    var data = jsonDecode(response.body.toString());
    if (response.statusCode == 200) {
      for (Map<String, dynamic> index in data) {
        contientsList.add(Contients.fromJson(index));
      }
      return contientsList;
    } else {
      return contientsList;
    }
  }
}
