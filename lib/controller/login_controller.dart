import 'package:get/get.dart';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:travel_app/home_page.dart';

class LoginController extends GetxController {
  final emailController = TextEditingController().obs;
  final passwordController = TextEditingController().obs;
  final passwordConfigaritionController = TextEditingController().obs;
  RxBool loading = false.obs;
  void log(String fcmtoken) async {
    loading.value = true;
    var response = await http.post(
      Uri.parse('http://192.168.137.1:8000/api/login'),
      headers: {
        'Accept': 'application/json',
        //'ngrok-skip-browser-warning': "33132"
      },
      body: <String, String>{
        'email': emailController.value.text,
        'password': passwordController.value.text,
        'password_confirmation': passwordConfigaritionController.value.text,
      },
    );
    var js = jsonDecode(response.body);
    print(response.statusCode);
    if (response.statusCode == 200) {
      loading.value = false;
      var id = js['data']['user']['id'];
      var token = js['data']['token'];
      print('id:$id');
      Get.snackbar('Login Success', 'congrations');
       Get.to(HomePage(fcmtoken,id: id.toString(),token: token.toString(),));
    } else {
      loading.value = false;
      Get.snackbar('Login Failed', js['message']);
    }
  }
}
