import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:travel_app/controller/login_controller.dart';
import 'package:travel_app/controller/reset_controller.dart';

import 'sinup_screen.dart';

class Login extends StatefulWidget {
  Login(this.fcmtoken, {super.key});
  final String fcmtoken;
  @override
  State<Login> createState() => _LoginScreenState(fcmtoken.toString());
}

class _LoginScreenState extends State<Login> {
  _LoginScreenState(this.fcmtoken);
  final String fcmtoken;
  LoginController controller = Get.put(LoginController());

  bool keepMeLoggedIn = false;
  bool sec = true;
  @override
  void initState() {
    // TODO: implement initState

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScopeNode currentFocus = FocusScope.of(context);
        if (!currentFocus.hasPrimaryFocus) {
          //هون يعني لغينا تركيز اي عنصر تاني لما نضغط على منطقة خالية
          //مثلا اذا كبسنا عالتيكست فيلد قام طلعت لوحة المفاتيح منقوم اذا ضغطنا ع أي منطقة بالسكاففولد منقلها بيبااااااي
          currentFocus.unfocus();
        }
      },
      child: Scaffold(
        // عملنا للسكافلد راب مع الجيستر ديتيكتر مشان اذا كبسنا بأي ارنة بالشاشة ينزل الكيبورد
        body: SingleChildScrollView(
          child: Container(
            color: Colors.white,
            padding: const EdgeInsets.all(40.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 20,
                ),
                const SizedBox(height: 65),
                const Text(
                  'Login Your Account',
                  style: TextStyle(
                    fontSize: 29,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff001c30),
                    fontFamily: "pacifico",
                  ),
                ),
                const SizedBox(
                  height: 39,
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
                  keyboardType: TextInputType.emailAddress,
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
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(
                        color: Color(0xff001c30),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 34,
                ),
                TextFormField(
                  cursorColor: Color(0xff001c30),
                  controller: controller.passwordController.value,
                  obscureText: sec,
                  onFieldSubmitted: (String value) {
                    print(value);
                  },
                  onChanged: (String value) {
                    print(value);
                  },
                  keyboardType: TextInputType.visiblePassword,
                  decoration: InputDecoration(
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          sec = !sec;
                        });
                      },
                      icon: Icon(
                        sec ? Icons.visibility_off : Icons.visibility,
                        color: Color(0xff001c30),
                      ),
                    ),
                    filled: true,
                    fillColor: Color(0xffDAFFFB),
                    hintText: 'Password',
                    hintStyle: const TextStyle(
                      color: Color(0xff176B87),
                      fontFamily: "K2D",
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Color(0xff001c30),
                      ),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        color: Color(0xff001c30),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 34,
                ),
                TextFormField(
                  cursorColor: Color(0xff001c30),
                  controller: controller.passwordConfigaritionController.value,
                  obscureText: sec,
                  onFieldSubmitted: (String value) {
                    print(value);
                  },
                  onChanged: (String value) {
                    print(value);
                  },
                  keyboardType: TextInputType.visiblePassword,
                  decoration: InputDecoration(
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          sec = !sec;
                        });
                      },
                      icon: Icon(
                        sec ? Icons.visibility_off : Icons.visibility,
                        color: Color(0xff001c30),
                      ),
                    ),
                    filled: true,
                    fillColor: Color(0xffDAFFFB),
                    hintText: 'Confirmation Password',
                    hintStyle: const TextStyle(
                      color: Color(0xff176B87),
                      fontFamily: "K2D",
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Color(0xff001c30),
                      ),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        color: Color(0xff001c30),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 7,
                ),
                Row(
                  children: [
                    const SizedBox(
                      height: 16,
                    ),
                    /*  TextButton(
                      onPressed: () {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              title: const Text(
                                'Enter your email to send the verification code',
                                style: TextStyle(
                                  color: Color(0xff001c30),
                                  fontFamily: 'K2D',
                                ),
                              ),
                              content: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: <Widget>[
                                  TextField(
                                    controller: controller1
                                        .emailvericationcontroller.value,
                                    decoration: InputDecoration(
                                      hintText: 'Your Email',
                                      hintStyle: TextStyle(
                                        color: Color(0xff176B87),
                                        fontFamily: "K2D",
                                      ),
                                      filled: true,
                                      fillColor: Color(0xffDAFFFB),
                                      border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                      ),
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color(0xff001c30),
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(20.0),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color(0xff001c30),
                                          width: 2.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(30.0),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              actions: <Widget>[
                                Obx(() => controller1.loading.value
                                    ? const CircularProgressIndicator(
                                        color: const Color(0xff001c30),
                                      )
                                    : TextButton(
                                        onPressed: () {
                                          controller1.Reset();
                                        },
                                        style: TextButton.styleFrom(
                                          backgroundColor: Color(0xff001c30),
                                          minimumSize: Size(50, 50),
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 16.0, vertical: 8.0),
                                        ),
                                        child: Icon(
                                          Icons.arrow_forward,
                                          color: Colors.white,
                                        ),
                                      )),
                              ],
                            );
                          },
                        );
                      },
                      child: const Text(
                        'Forgot Password?',
                        style: TextStyle(
                            color: Color(0xff001c30),
                            fontWeight: FontWeight.bold,
                            fontFamily: "K2D"),
                      ),
                    ),*/
                    const SizedBox(
                      height: 15,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 7,
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
                              controller.log(fcmtoken);
                            },
                            child: const Text(
                              'Log In',
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
                  height: 16,
                ),
                const SizedBox(
                  height: 15,
                ),
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 30),
                  child: const Row(
                    children: [
                      Expanded(
                        child: Divider(
                          indent: 2.0,
                          color: Color(0xff001c30),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        'or',
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w900,
                            color: Color(0xff176B87),
                            fontFamily: "K2D"),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Expanded(
                        child: Divider(
                          indent: 2.0,
                          color: Color(0xff001c30),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Dont have an account?',
                      style: TextStyle(
                        fontWeight: FontWeight.w900,
                        fontSize: 17,
                        color: Color(0xff176B87),
                        fontFamily: "K2D",
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        // Get.to(signup());
                      },
                      child: const Text(
                        'Sing UP',
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
    );
  }
}
