import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:travel_app/core/images/network_image.dart';
import 'package:travel_app/models/hotel.dart';


class HotelDetailsScreen extends StatelessWidget {
  final PageController _pageController = PageController();
  final Hotel hotel;
  final int tripId;

  HotelDetailsScreen({super.key, required this.hotel, required this.tripId});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffDAFFFB),
      body: Column(
        children: [
          MainPhotos(pageController: _pageController, hotel: hotel),
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
                    RichText(
                      text: TextSpan(
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff001c30),
                          fontFamily: "K2D",
                        ),
                        children: [
                          TextSpan(
                            text: '${hotel.hotelName}\n',
                            style: TextStyle(
                              fontFamily: "K2D",
                            ),
                          ),
                          TextSpan(
                            text: hotel.countryName,
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.grey.withOpacity(0.6),
                              fontFamily: "K2D",
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 15),
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: '\$${hotel.price}',
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff176BB7),
                              fontFamily: "K2D",
                            ),
                          ),
                          TextSpan(
                            text: ' /A night',
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.grey.withOpacity(0.6),
                              fontFamily: "K2D",
                            ),
                          ),
                        ],
                      ),
                    ),
                    // SizedBox(height: 16),
                    // Text(

                    //   'A brief description about the hotel sdfredcfvgtrfddddddddddddddddddddddddddddfedwsxzzzzzzzzzzz.',
                    //   style: TextStyle(
                    //     fontSize: 16,
                    //     color: Colors.black54,
                    //     fontFamily: "K2D",
                    //   ),
                    // ),
                    // SizedBox(height: 16),
                    // Text(
                    //   'Empty Room :\$20',
                    //   style: TextStyle(
                    //     fontSize: 18,
                    //     fontWeight: FontWeight.bold,
                    //     color: Color(0xff176BB7),
                    //     fontFamily: "K2D",
                    //   ),
                    // ),
                    // SizedBox(height: 15),
                    // Wrap(
                    //   spacing: 80,
                    //   runSpacing: 20,
                    //   children: [
                    //     Row(
                    //       children: [
                    //         Icon(Icons.spa),
                    //         SizedBox(width: 8),
                    //         Text(
                    //           'Spa and Wellness Center',
                    //           style: TextStyle(
                    //             fontFamily: "K2D",
                    //           ),
                    //         ),
                    //         SizedBox(width: 16),
                    //         Icon(Icons.ac_unit),
                    //         SizedBox(width: 8),
                    //         Text(
                    //           'Air Conditioning',
                    //           style: TextStyle(
                    //             fontFamily: "K2D",
                    //           ),
                    //         ),
                    //       ],
                    //     ),
                    //     Row(
                    //       children: [
                    //         Icon(Icons.wifi),
                    //         SizedBox(width: 8),
                    //         Text(
                    //           'Free Wi-Fi',
                    //           style: TextStyle(
                    //             fontFamily: "K2D",
                    //           ),
                    //         ),
                    //         SizedBox(width: 16),
                    //         Icon(Icons.room_service),
                    //         SizedBox(width: 8),
                    //         Text(
                    //           '24/7 Room Service',
                    //           style: TextStyle(
                    //             fontFamily: "K2D",
                    //           ),
                    //         ),
                    //       ],
                    //     ),
                    //   ],
                    // ),
                    // SizedBox(height: 15),
                    Text(
                      'Example about our food:',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff001c30),
                        fontFamily: "pacifico",
                      ),
                    ),
                    SizedBox(height: 8),
                    Wrap(
                      spacing: 20,
                      children: [
                        _buildFoodImage('assets/food1.png'),
                        _buildFoodImage('assets/food2.png'),
                        _buildFoodImage('assets/food3.png'),
                      ],
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment
                          .end, // لضمان وجود الزر في نهاية السطر
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: Color(0xff001c30),
                            borderRadius: BorderRadius.circular(18.0),
                          ),
                          child: IconButton(
                            onPressed: () async {
                              // Add your logic here when the button is pressed
                              Get.toNamed('/ActivityTableOptinalTrip',
                                  arguments: tripId);
                            },
                            icon: Icon(
                              Icons.arrow_forward,
                              color: Colors.white, // لون السهم الأبيض
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

  Widget _buildFoodImage(String imagePath) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Image.asset(
        imagePath,
        width: 100,
        height: 100,
        fit: BoxFit.cover,
      ),
    );
  }
}

class MainPhotos extends StatelessWidget {
  const MainPhotos({
    super.key,
    required PageController pageController,
    required this.hotel,
  }) : _pageController = pageController;

  final PageController _pageController;
  final Hotel hotel;

  @override
  Widget build(BuildContext context) {
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
              getImageNetwork(url: hotel.photo1),
              getImageNetwork(url: hotel.photo2),
              getImageNetwork(url: hotel.photo3),
            ],
          ),
          Positioned(
            top: 100,
            left: 0,
            child: IconButton(
              icon: Icon(
                Icons.arrow_back,
                color: Colors.black,
              ),
              onPressed: () {
                _pageController.previousPage(
                  duration: Duration(milliseconds: 500),
                  curve: Curves.easeInOut,
                );
              },
            ),
          ),
          Positioned(
            top: 100,
            right: 0,
            child: IconButton(
              icon: Icon(Icons.arrow_forward, color: Colors.black),
              onPressed: () {
                _pageController.nextPage(
                  duration: Duration(milliseconds: 500),
                  curve: Curves.easeInOut,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
