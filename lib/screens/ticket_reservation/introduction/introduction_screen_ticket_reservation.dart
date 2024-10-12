import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:travel_app/core/images/network_image.dart';
import 'package:travel_app/screens/ticket_reservation/introduction/introduction_ticket_reservation_controller.dart';
import 'package:travel_app/screens/ticket_reservation/introduction/widgets/book_now_button.dart';
import 'package:travel_app/screens/ticket_reservation/introduction/widgets/number_of_tickets.dart';
import 'package:travel_app/screens/ticket_reservation/introduction/widgets/show_transport_detailes_dialog.dart';

class IntroductionScreenTicketREservation extends StatefulWidget {
  const IntroductionScreenTicketREservation({super.key});

  @override
  State<IntroductionScreenTicketREservation> createState() =>
      _IntroductionScreenTicketREservationState();
}

class _IntroductionScreenTicketREservationState
    extends State<IntroductionScreenTicketREservation> {
  final PageController _pageController = PageController();
  final IntroductionTicketReservationController
      introductionTicketReservationController =
      Get.put(IntroductionTicketReservationController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffDAFFFB),
      body: Column(
        children: [
          buildImageSlider(),
          Expanded(
            child: SingleChildScrollView(
              child: buildContent(context),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildImageSlider() {
    return SizedBox(
      height: 250,
      width: 500,
      child: Stack(
        children: [
          PageView(
            controller: _pageController,
            scrollDirection: Axis.horizontal,
            pageSnapping: false,
            children: [
              getImageNetwork(
                  url: introductionTicketReservationController
                      .ticketTrip.journeyPhoto1),
              getImageNetwork(
                  url: introductionTicketReservationController
                      .ticketTrip.journeyPhoto2),
              getImageNetwork(
                  url: introductionTicketReservationController
                      .ticketTrip.journeyPhoto3),
            ],
          ),
          Positioned(
            top: 100,
            left: 0,
            child: IconButton(
              icon: const Icon(
                Icons.arrow_back,
                color: Colors.black,
              ),
              onPressed: () {
                _pageController.previousPage(
                  duration: const Duration(milliseconds: 500),
                  curve: Curves.easeInOut,
                );
              },
            ),
          ),
          Positioned(
            top: 100,
            right: 0,
            child: IconButton(
              icon: const Icon(Icons.arrow_forward, color: Colors.black),
              onPressed: () {
                _pageController.nextPage(
                  duration: const Duration(milliseconds: 500),
                  curve: Curves.easeInOut,
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget buildContent(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      alignment: Alignment.topCenter,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(50),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          buildTextSection(),
          const SizedBox(height: 10),
          buildTransportOption(context),
          const SizedBox(height: 5),
          buildTicketReservationOption(context),
          const SizedBox(height: 10),
          buildBookNowButton(),
        ],
      ),
    );
  }

  Widget buildTextSection() {
    final IntroductionTicketReservationController
        introductionTicketReservationController = Get.find();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'About:',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Color(0xff001c30),
            fontFamily: "pacifico",
          ),
          textAlign: TextAlign.start,
        ),
        const SizedBox(height: 8),
        Text(
          introductionTicketReservationController.ticketTrip.destination,
          style: const TextStyle(
            fontSize: 16,
            color: Colors.black38,
            fontFamily: "K2D",
          ),
          textAlign: TextAlign.start,
        ),
        const SizedBox(height: 5),
        Text(
          'Ticket price: \$${introductionTicketReservationController.ticketTrip.price}',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Color(0xff001c30),
            fontFamily: "K2D",
          ),
        ),
      ],
    );
  }

  Widget buildTransportOption(BuildContext context) {
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
              Icons.directions_bus,
              color: Colors.white,
            ),
          ),
          const SizedBox(width: 20),
          const Text(
            'transport',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w700,
              color: Color(0xff176BB7),
              fontFamily: "K2D",
            ),
          ),
          const Spacer(),
          GestureDetector(
            onTap: () {
              showTransportDetailsForTicketReservation(context);
            },
            child: Obx(() {
              return Icon(
                introductionTicketReservationController
                            .selectedTransport.value !=
                        0
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
}
