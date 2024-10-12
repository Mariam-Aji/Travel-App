import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:travel_app/screens/optinal_trip/introduction/widgets/transport_option.dart';
import 'package:travel_app/screens/ticket_reservation/introduction/introduction_ticket_reservation_controller.dart';

Future<dynamic> showTransportDetailsForTicketReservation(BuildContext context) {
  final IntroductionTicketReservationController
      introductionTicketReservationController = Get.find();
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
                introductionTicketReservationController.transportList.length,
                (index) => TransportOption(
                  transport: introductionTicketReservationController
                      .transportList[index],
                  isSelected: introductionTicketReservationController
                          .transportList[index].id ==
                      introductionTicketReservationController
                          .selectedTransport.value,
                  onChanged: (value) {
                    introductionTicketReservationController.selectTransport(
                        introductionTicketReservationController
                            .transportList[index].id);
                  },
                ),
              )
            ],
          ),
        ),
        actions: <Widget>[
          TextButton(
            onPressed: () {
              if (introductionTicketReservationController
                      .selectedTransport.value !=
                  0) {
                Get.back();
              } else {
                Get.snackbar(
                  "Error",
                  "Please select a transport option.",
                  snackPosition: SnackPosition.BOTTOM,
                  backgroundColor: Colors.red,
                  colorText: Colors.white,
                );
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
