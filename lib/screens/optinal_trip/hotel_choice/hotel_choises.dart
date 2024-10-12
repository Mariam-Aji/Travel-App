import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:travel_app/models/hotel.dart';
import 'package:travel_app/screens/optinal_trip/hotel_choice/hotel_choice_controller.dart';

import '../hotel_screen.dart';

class HotelChoisOptinalTrip extends StatefulWidget {
  const HotelChoisOptinalTrip({Key? key}) : super(key: key);

  @override
  State<HotelChoisOptinalTrip> createState() => _HotelChoisState();
}

class _HotelChoisState extends State<HotelChoisOptinalTrip> {
  final HotelChoiceController hotelChoiceController =
      Get.put(HotelChoiceController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color(0xff64ccc5),
        title: Text(
          'Our hotel options:',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 24,
            color: Colors.white,
            fontFamily: "pacifico",
          ),
        ),
      ),
      body: Obx(
        () => hotelChoiceController.isLoading.value
            ? Center(
                child: CircularProgressIndicator(),
              )
            : GridView.count(
                crossAxisCount: 2, // عدد العناصر في كل صف أفقي
                mainAxisSpacing:
                    20.0, // المسافة بين العناصر في الاتجاه الرئيسي (عمودياً)
                crossAxisSpacing:
                    20.0, // المسافة بين العناصر في الاتجاه المتقاطع (أفقياً)
                padding: EdgeInsets.all(14.0),
                children: [
                  ...List.generate(
                      hotelChoiceController.hotels.length,
                      (index) =>
                          HotelCard(hotel: hotelChoiceController.hotels[index]))
                  // Add more hotel cards as needed
                ],
              ),
      ),
    );
  }
}

class HotelCard extends StatelessWidget {
  final Hotel hotel;
  const HotelCard({
    Key? key,
    required this.hotel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 8.0),
      padding: EdgeInsets.all(16.0),
      width: 300.0, // تحديد العرض المطلوب للحاوية
      decoration: BoxDecoration(
        color: Color(0xffDAFFFB),
        borderRadius: BorderRadius.circular(16.0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 3,
            blurRadius: 5,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(16.0),
              child: Image.network(
                hotel.photo1,
                width: double.infinity,
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) => Center(
                  child: Icon(Icons.error),
                ),
              ),
            ),
          ),
          SizedBox(height: 10),
          // تقسيم النص إلى سطرين مختلفين
          Text(
            hotel.hotelName,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
              color: Colors.black,
              fontFamily: "K2D",
            ),
          ),
          SizedBox(height: 5),
          Row(
            children: [
              Expanded(
                child: Text(
                  'Price per night: \$${hotel.price}',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Colors.black,
                      fontFamily: "K2D"),
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
          InkWell(
            onTap: () {
              final HotelChoiceController hotelChoiceController = Get.find();
              // قم بتنفيذ العملية التي تريدها عند النقر على سهم الانتقال
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => HotelDetailsScreen(
                          hotel: hotel,
                          tripId: hotelChoiceController.tripId,
                        )),
              );
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'View Details',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Color(0xff176BB7),
                    fontFamily: "K2D",
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
