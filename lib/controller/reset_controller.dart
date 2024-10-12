// import 'package:get/get.dart';
// import 'dart:convert';
// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;
// import 'package:travel_app/forget_password_screen.dart';

// class ResetController extends GetxController {
//   final emailvericationcontroller = TextEditingController().obs;
//   RxBool loading = false.obs;
//   void Reset() async {
//     loading.value = true;
//     var response = await http.post(
//       Uri.parse('https://28c0-169-150-196-141.ngrok-free.app/api/password/email'),
//       headers: {'Accept': 'application/json',
//       'ngrok-skip-browser-warning': '33192'},
//       body: <String, String>{
//         'email': emailvericationcontroller.value.text,
//       },
//     );

//     var js = jsonDecode(response.body);

//     print(response.statusCode);
//     if (response.statusCode == 200) {
//       loading.value = false;

//       Get.snackbar('Success😍😍', js['message']);
//       Get.to(RegisterScreen());
//     } else {
//       loading.value = false;

//       Get.snackbar('Failed😢😢 ', js['message']);
//     }
//   }
// }
