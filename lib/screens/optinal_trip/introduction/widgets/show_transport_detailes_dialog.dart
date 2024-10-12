import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:travel_app/core/widgets/snackbar_manager.dart';
import 'package:travel_app/screens/optinal_trip/introduction/introduction_controller.dart';
import 'package:travel_app/screens/optinal_trip/introduction/widgets/transport_option.dart';

Future<dynamic> showTransportDetails(BuildContext context) {
  final IntroductionController introductionController = Get.find();
  return showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: const Text(
          "Transport Details",
          style: TextStyle(
            fontFamily: "K2D",
          ),
        ),
        content: Obx(
          () => Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ...List.generate(
                introductionController.transportList.length,
                (index) => TransportOption(
                  transport: introductionController.transportList[index],
                  isSelected: introductionController.transportList[index].id ==
                      introductionController.selectedTransport.value,
                  onChanged: (value) {
                    introductionController.selectTransport(
                        introductionController.transportList[index].id);
                  },
                ),
              )
            ],
          ),
        ),
        actions: <Widget>[
          TextButton(
            onPressed: () {
              if (introductionController.selectedTransport.value == 0) {
                SnackbarManager.showSnackbar('pleas select your transporation');
              } else {
                Get.back();
              }
            }, // تحديد لون النص هنا
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(
                  const Color(0xff64ccc5)), // تحديد لون الخلفية هنا
            ),
            child: const Text('OK',
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: "K2D",
                )),
          ),
        ],
      );
    },
  );
}
