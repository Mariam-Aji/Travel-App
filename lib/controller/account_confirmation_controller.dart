import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:travel_app/home_page.dart';

class AccountConfirmationController extends GetxController {
  final linkController = TextEditingController().obs;
  RxBool loading = false.obs;
  void account(String id,String token,String fcmtoken) async {
    loading.value = true;
    var response = await http.get(Uri.parse('${linkController.value.text}'),
        //headers: {"ngrok-skip-browser-warning": "32833"}
        );
    if (response.statusCode == 200) {
      loading.value = false;
      Get.snackbar('Verification Success', 'Verified Successfully');
      Get.to(HomePage(fcmtoken,id: id.toString(),token:token));
    } else {
      loading.value = false;
      Get.snackbar('Verification Failed', 'you send an incorrect link');
    }
  }
}
