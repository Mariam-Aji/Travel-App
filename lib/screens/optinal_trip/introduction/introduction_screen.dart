import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:travel_app/screens/optinal_trip/introduction/introduction_controller.dart';
import 'package:travel_app/screens/optinal_trip/introduction/widgets/main_page_view_images.dart';
import 'package:travel_app/screens/optinal_trip/introduction/widgets/show_transport_detailes_dialog.dart';
import 'package:travel_app/screens/optinal_trip/place_screen.dart';
import 'package:travel_app/screens/const_trip/reviews/reviews_screen.dart';

class IntroductionScreenOptinalTrip extends StatefulWidget {
  const IntroductionScreenOptinalTrip({super.key});

  @override
  State<IntroductionScreenOptinalTrip> createState() =>
      _IntroductionScreenState();
}

class _IntroductionScreenState extends State<IntroductionScreenOptinalTrip> {
  final PageController _pageController = PageController();
  final IntroductionController introductionController =
      Get.put(IntroductionController());
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffDAFFFB),
      body: Column(
        children: [
          MainPageViewImages(pageController: _pageController),
          Expanded(
            child: SingleChildScrollView(
              child: Container(
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
                      introductionController.trip.destinationEn,
                      style: const TextStyle(
                        fontSize: 16,
                        color: Colors.black38,
                        fontFamily: "K2D",
                      ),
                      textAlign: TextAlign.start,
                    ),
                    const SizedBox(height: 5),
                    // RatingAndReviews(),
                    const SizedBox(height: 10),
                    Text(
                      'Ticket price: \$${introductionController.trip.price}',
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff001c30),
                        fontFamily: "K2D",
                      ),
                    ),
                    const SizedBox(height: 10),
                    OptionsButtons(
                      title: "transport",
                      onTap: () {
                        showTransportDetails(context);
                      },
                      icon: Icons.directions_bus,
                    ),
                    const SizedBox(height: 5),
                    OptionsButtons(
                      title: "Hotels",
                      onTap: () {
                        Get.toNamed('/HotelChoisOptinalTrip',
                            arguments: introductionController.trip.id);
                      },
                      icon: Icons.apartment,
                    ),
                    const SizedBox(height: 5),
                    OptionsButtons(
                      title: "Number of family members",
                      onTap: () {
                        showEnterFamilyMembersDialog(context);
                      },
                      icon: Icons.family_restroom,
                    ),
                    const SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0xff001c30),
                          ),
                          padding: const EdgeInsets.all(8),
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => PlacesScreen()),
                              );
                            },
                            child: const Icon(
                              Icons.arrow_forward,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Future<dynamic> showEnterFamilyMembersDialog(BuildContext context) {
    final IntroductionController introductionController = Get.find();
    return showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text(
            'Enter Family Members',
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
              controller: introductionController.numberOfTicketsController,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                hintText: 'Enter number of family members',
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
                  introductionController.update();
                  Get.back();
                }
                // يمكنك تنفيذ أي عمليات تريدها هنا، مثل إرسال القيمة أو إغلاق الشاشة
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
}

String? validateNumberOfTickets(String? value) {
  int numberOfTickets = int.tryParse(value ?? '') ?? 0;
  if (numberOfTickets < 1) {
    return 'You must reserve at least one ticket.';
  }
  return null;
}

class OptionsButtons extends StatelessWidget {
  const OptionsButtons({
    super.key,
    required this.title,
    required this.onTap,
    required this.icon,
  });
  final String title;
  final Function() onTap;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
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
            child: Icon(
              icon,
              color: Colors.white,
            ),
          ),
          const SizedBox(width: 20),
          Text(
            title,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w700,
              color: Color(0xff176BB7),
              fontFamily: "K2D",
            ),
          ),
          const Spacer(),
          GestureDetector(
            onTap: onTap,
            child: const Icon(
              Icons.arrow_forward,
              color: Colors.black38,
            ),
          ),
        ],
      ),
    );
  }
}

class RatingAndReviews extends StatelessWidget {
  const RatingAndReviews({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(Icons.star, color: Colors.yellow),
        const Icon(Icons.star, color: Colors.yellow),
        const Icon(Icons.star, color: Colors.yellow),
        const Icon(Icons.star, color: Colors.yellow),
        const Icon(Icons.star_half, color: Colors.yellow),
        const SizedBox(width: 8),
        const Text(
          '4.5',
          style: TextStyle(
            fontSize: 16,
            color: Color(0xff176BB7),
            fontFamily: "K2D",
          ),
        ),
        const SizedBox(width: 8),
        const Text(
          '(50 reviews)',
          style: TextStyle(
            fontSize: 16,
            color: Colors.black26,
            fontFamily: "K2D",
          ),
        ),
        const SizedBox(width: 40),
        GestureDetector(
          onTap: () {},
          child: GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ReviewsScreen()),
              );
            },
            child: const Text(
              'see reviews',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: Color(0xff176BB7),
                fontFamily: "K2D",
              ),
            ),
          ),
        ),
      ],
    );
  }
}
