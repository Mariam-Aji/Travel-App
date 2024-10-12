import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:travel_app/controller/sinup_controller.dart';

import 'login_screen.dart';

class signup extends StatefulWidget {
  signup(this.fcmtoken, {super.key});
  final String fcmtoken;

  @override
  State<signup> createState() => _LoginScreenState(fcmtoken.toString());
}

class _LoginScreenState extends State<signup> {
  _LoginScreenState(this.fcmtoken);
  final String fcmtoken;
  late SinupController controller ;
  
  
  bool keepMeLoggedIn = false;
  bool sec = true;
  var id = "";
@override
  void initState() {
    // TODO: implement initState
   controller = Get.put(SinupController(fcmtoken.toString()));

    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScopeNode currentFocus = FocusScope.of(context);
        if (!currentFocus.hasPrimaryFocus) {
          currentFocus.unfocus();
        }
      },
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            constraints: BoxConstraints(
              minHeight: MediaQuery.of(context).size.height,
            ),
            child: Padding(
              padding: const EdgeInsets.all(40.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(height: 27),
                  const Text(
                    'Create your account',
                    style: TextStyle(
                      fontSize: 29,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff001c30),
                      fontFamily: "pacifico",
                    ),
                  ),
                  const SizedBox(
                    height: 31,
                  ),
                  TextFormField(
                    cursorColor: Color(0xff001c30),
                    controller: controller.firstnameController.value,
                    onFieldSubmitted: (String value) {
                      print(value);
                    },
                    onChanged: (String value) {
                      print(value);
                    },
                    keyboardType: TextInputType.name,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Color(0xffDAFFFB),
                      hintText: 'Name',
                      hintStyle: const TextStyle(
                        color: Color(0xff176B87),
                        fontFamily: "K2D",
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Color(0xff001c30),
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Color(0xff001c30),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 31,
                  ),
                  TextFormField(
                    cursorColor: Color(0xff001c30),
                    controller: controller.middlenameController.value,
                    onFieldSubmitted: (String value) {
                      print(value);
                    },
                    onChanged: (String value) {
                      print(value);
                    },
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Color(0xffDAFFFB),
                      hintText: 'Name of the Father',
                      hintStyle: const TextStyle(
                        color: Color(0xff176B87),
                        fontFamily: "K2D",
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Color(0xff001c30),
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Color(0xff001c30),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 31,
                  ),
                  TextFormField(
                    cursorColor: Color(0xff001c30),
                    controller: controller.lastnameController.value,
                    onFieldSubmitted: (String value) {
                      print(value);
                    },
                    onChanged: (String value) {
                      print(value);
                    },
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Color(0xffDAFFFB),
                      hintText: 'Nickname',
                      hintStyle: const TextStyle(
                        color: Color(0xff176B87),
                        fontFamily: "K2D",
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Color(0xff001c30),
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Color(0xff001c30),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 31,
                  ),
                  TextFormField(
                    cursorColor: Color(0xff001c30),
                    controller: controller.phoneController.value,
                    onFieldSubmitted: (String value) {
                      print(value);
                    },
                    onChanged: (String value) {
                      print(value);
                    },
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Color(0xffDAFFFB),
                      hintText: 'Phone number',
                      hintStyle: const TextStyle(
                        color: Color(0xff176B87),
                        fontFamily: "K2D",
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Color(0xff001c30),
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Color(0xff001c30),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 31,
                  ),
                  TextFormField(
                    cursorColor: Color(0xff001c30),
                    controller: controller.emailController.value,
                    onFieldSubmitted: (String value) {
                      print(value);
                    },
                    onChanged: (String value) {
                      print(value);
                    },
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Color(0xffDAFFFB),
                      hintText: 'Email',
                      hintStyle: const TextStyle(
                        color: Color(0xff176B87),
                        fontFamily: "K2D",
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Color(0xff001c30),
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Color(0xff001c30),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 31,
                  ),
                  TextFormField(
                    cursorColor: Color(0xff001c30),
                    controller: controller.passwordController.value,
                    onFieldSubmitted: (String value) {
                      print(value);
                    },
                    onChanged: (String value) {
                      print(value);
                    },
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Color(0xffDAFFFB),
                      hintText: 'password',
                      hintStyle: const TextStyle(
                        color: Color(0xff176B87),
                        fontFamily: "K2D",
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Color(0xff001c30),
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Color(0xff001c30),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 31,
                  ),
                  TextFormField(
                    cursorColor: Color(0xff001c30),
                    controller: controller.confirmationpasswordController.value,
                    onFieldSubmitted: (String value) {
                      print(value);
                    },
                    onChanged: (String value) {
                      print(value);
                    },
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Color(0xffDAFFFB),
                      hintText: 'Confirm password',
                      hintStyle: const TextStyle(
                        color: Color(0xff176B87),
                        fontFamily: "K2D",
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Color(0xff001c30),
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Color(0xff001c30),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 31,
                  ),
                  Obx(
                    () => controller.loading.value
                        ? const CircularProgressIndicator(
                            color: const Color(0xff001c30),
                          )
                        : Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: const Color(0xff001c30),
                            ),
                            width: double.infinity,
                            height: 55,
                            child: MaterialButton(
                              onPressed: () {
                                controller.signUP();
                              },
                              child: Text(
                                'Sign Up',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: "pacifico",
                                ),
                              ),
                            ),
                          ),
                  ),
                  const SizedBox(
                    height: 14,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'already have an account?',
                        style: TextStyle(
                          fontWeight: FontWeight.w900,
                          fontSize: 17,
                          color: Color(0xff176B87),
                          fontFamily: "K2D",
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          Get.to(Login(fcmtoken.toString()));
                        },
                        child: Text(
                          'Sign In ',
                          style: TextStyle(
                              color: Color(0xff001c30),
                              fontWeight: FontWeight.bold,
                              fontFamily: "K2D"),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
