import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:travel_app/controller/account_confirmation_controller.dart';

class AccountConfirmation extends StatefulWidget {
  AccountConfirmation(this.fcmtoken,{super.key, required this.id, required this.token});
  final String fcmtoken;
  final String id;
  final String token;
  @override
  State<AccountConfirmation> createState() =>
      _AccountConfirmationState(id, token,fcmtoken);
}

class _AccountConfirmationState extends State<AccountConfirmation> {
  _AccountConfirmationState(this.id, this.token,this.fcmtoken);
  AccountConfirmationController controller =
      Get.put(AccountConfirmationController());
       String fcmtoken="";
  String id = "";
  String token = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 50),
            const Text(
              'Account Confirmation',
              style: TextStyle(
                fontSize: 29,
                fontWeight: FontWeight.bold,
                color: Color(0xff001c30),
                fontFamily: "pacifico",
              ),
            ),
            const SizedBox(height: 35),
            TextFormField(
              cursorColor: Color(0xff001c30),
              controller: controller.linkController.value,
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
                hintText: 'Enter the link that was sent',
                hintStyle: const TextStyle(
                    color: Color(0xff176B87), fontFamily: "K2D"),
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
            const SizedBox(height: 20),
            Obx(
              () => controller.loading.value
                  ? const CircularProgressIndicator(
                      color: Color(0xff001c30),
                    )
                  : ElevatedButton(
                      onPressed: () {
                        controller.account(this.id, this.token,this.fcmtoken);
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Color(0xff001c30),
                        textStyle: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          fontFamily: "K2D",
                        ),
                        padding: const EdgeInsets.symmetric(
                            vertical: 12, horizontal: 24),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: const Text(
                        'It was completed',
                        style: TextStyle(
                          fontFamily: "pacifico",
                          fontWeight: FontWeight.w900,
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                    ),
            ),
          ],
        ),
      ),
    );
  }
}
