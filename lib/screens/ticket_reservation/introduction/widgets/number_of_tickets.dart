import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:travel_app/screens/ticket_reservation/introduction/introduction_ticket_reservation_controller.dart';

Widget buildTicketReservationOption(BuildContext context) {
  IntroductionTicketReservationController
      introductionTicketReservationController = Get.find();
  final _formKey = GlobalKey<FormState>();

  String? validateNumberOfTickets(String? value) {
    int numberOfTickets = int.tryParse(value ?? '') ?? 0;
    if (numberOfTickets < 1) {
      return 'You must reserve at least one ticket.';
    }
    return null;
  }

  return Container(
    decoration: BoxDecoration(
      color: const Color(0xffDAFFFB),
      borderRadius: BorderRadius.circular(20),
      boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.5),
          spreadRadius: 5,
          blurRadius: 7,
          offset: const Offset(0, 3),
        ),
      ],
    ),
    padding: const EdgeInsets.all(20),
    child: Row(
      children: [
        Container(
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: Color(0xff001c30),
          ),
          padding: const EdgeInsets.all(8),
          child: const Icon(
            Icons.family_restroom,
            color: Colors.white,
          ),
        ),
        const SizedBox(width: 20),
        const Text(
          'Number of tickets you want to reserve',
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w700,
            color: Color(0xff176BB7),
            fontFamily: "K2D",
          ),
        ),
        const Spacer(),
        GestureDetector(
          onTap: () {
            showNumberOfTicketsDialog(
                context,
                _formKey,
                introductionTicketReservationController,
                validateNumberOfTickets);
          },
          child: GetBuilder<IntroductionTicketReservationController>(
              builder: (controller) {
            return Icon(
              controller.numberOFTicketsController.text != ''
                  ? Icons.check
                  : Icons.arrow_forward,
              color: Colors.black38,
            );
          }),
        ),
      ],
    ),
  );
}

Future<dynamic> showNumberOfTicketsDialog(
    BuildContext context,
    GlobalKey<FormState> _formKey,
    IntroductionTicketReservationController
        introductionTicketReservationController,
    String? validateNumberOfTickets(String? value)) {
  return showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: const Text(
          'Enter the number of tickets',
          style: TextStyle(
            color: Color(0xff001c30),
            fontWeight: FontWeight.w700,
            fontFamily: "K2D",
          ),
        ),
        content: Form(
          key: _formKey,
          child: TextFormField(
            cursorColor: Colors.black,
            controller: introductionTicketReservationController
                .numberOFTicketsController,
            keyboardType: TextInputType.number,
            decoration: const InputDecoration(
              hintText: 'Enter number of tickets you want to reserve',
              fillColor: Colors.black,
              focusColor: Colors.black,
              hoverColor: Colors.black,
            ),
            validator: validateNumberOfTickets,
          ),
        ),
        actions: <Widget>[
          TextButton(
            onPressed: () {
              FormState? formdata = _formKey.currentState;
              if (formdata!.validate()) {
                formdata.save();
                introductionTicketReservationController.update();
                Get.back();
              }
            },
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(const Color(0xff64ccc5)),
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
