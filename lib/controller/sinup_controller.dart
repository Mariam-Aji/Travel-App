import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:travel_app/account_confirmation.dart';

class SinupController extends GetxController {
  SinupController(this.fcmtoken);
  final String fcmtoken;
  final firstnameController = TextEditingController().obs;
  final middlenameController = TextEditingController().obs;
  final lastnameController = TextEditingController().obs;
  final emailController = TextEditingController().obs;
  final passwordController = TextEditingController().obs;
  final confirmationpasswordController = TextEditingController().obs;
  final phoneController = TextEditingController().obs;
  RxBool loading = false.obs;
  void signUP() async {
    loading.value = true;
    final response = await http
        .post(Uri.parse('http://192.168.137.1:8000/api/register'), headers: {
      'Accept': 'application/json',
      // 'ngrok-skip-browser-warning': "298033"
    }, body: {
      'first_name': firstnameController.value.text,
      'middle_name': middlenameController.value.text,
      'last_name': lastnameController.value.text,
      'email': emailController.value.text,
      'password': passwordController.value.text,
      'password_confirmation': confirmationpasswordController.value.text,
      'phone_number': phoneController.value.text,
    });
    var js = jsonDecode(response.body);
    print(response.statusCode);
    if (response.statusCode == 200) {
      loading.value = false;
      var id = js['data']['user']['id'];
      var token = js['data']['token'];
      print('id:$id');
      Get.snackbar('Sinup Success', 'congrations');
      fcm(id.toString(), fcmtoken.toString(), token.toString());
    } else {
      loading.value = false;
      Get.snackbar('Sinup Failed', js['message']);
    }
  }

  void fcm(String userid, String fcmtoken, String token) async {
    final response = await http.post(
        Uri.parse('http://192.168.137.1:8000/api/storeFCMToken'),
        headers: {
          'Accept': 'application/json',
          //'ngrok-skip-browser-warning': "298933"
        },
        body: {
          'user_id': '$userid',
          'fcm token': '$fcmtoken'
        });
    var js = jsonDecode(response.body);
    print(response.statusCode);
    if (response.statusCode == 200) {
      Get.snackbar('Sinup Success', 'congrations');
      Get.to(AccountConfirmation(fcmtoken,
          id: userid.toString(), token: token.toString()));
    } else {
      Get.snackbar('fcm Failed', js['message']);
    }
  }
}
