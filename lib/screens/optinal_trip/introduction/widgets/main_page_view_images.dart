import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:travel_app/screens/optinal_trip/introduction/introduction_controller.dart';

class MainPageViewImages extends StatelessWidget {
  MainPageViewImages({
    super.key,
    required PageController pageController,
  }) : _pageController = pageController;

  final PageController _pageController;
  final IntroductionController introductionController = Get.find();
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
              Image.asset('assets/place1.png', fit: BoxFit.cover),
              Image.asset('assets/place2.png', fit: BoxFit.cover),
              Image.asset('assets/place3.png', fit: BoxFit.cover),
              // getImageNetwork(url:  introductionController.hotel.photo1,
              //     ),
              // getImageNetwork(url:  introductionController.hotel.photo2,
              //     ),
              // getImageNetwork(url:  introductionController.hotel.photo3,
              //     ),
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
}
