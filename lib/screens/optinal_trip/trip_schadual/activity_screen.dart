import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:travel_app/core/images/network_image.dart';
import 'package:travel_app/models/trip_schoul.dart';
import 'package:travel_app/screens/optinal_trip/trip_schadual/trip_schadual_controller.dart';

class ActivityTableOptinalTrip extends StatefulWidget {
  @override
  _ActivityTableOptinalTripState createState() =>
      _ActivityTableOptinalTripState();
}

class _ActivityTableOptinalTripState extends State<ActivityTableOptinalTrip> {
  int _selectedDayIndex = 0;
  final TripSchadualController tripSchadualController =
      Get.put(TripSchadualController());
  final List<String> _days = ['Day 1', 'Day 2', 'Day 3', 'Day 4', 'Day 5'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff64ccc5),
        title: const Text(
          'Activities Schedule:',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.white,
            fontFamily: "pacifico",
          ),
        ),
      ),
      body: Obx(
        () => tripSchadualController.isLoading.value
            ? Center(
                child: SizedBox(
                  child: CircularProgressIndicator(),
                ),
              )
            : tripSchadualController.tripScadualEmpty.value
                ? Center(
                    child: Text('no Schadual Aviable now'),
                  )
                : Column(
                    children: [
                      const SizedBox(height: 20),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: _buildDayButtons(),
                        ),
                      ),
                      const SizedBox(height: 20),
                      _buildActivitiesForSelectedDay(
                          tripSchadualController.tripSchadual),
                      const SizedBox(height: 20),
                      _buildTotalPriceForEachDay(
                          tripSchadualController.tripSchadual),
                      const SizedBox(height: 5),
                      Padding(
                        padding: const EdgeInsets.all(13.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            ElevatedButton(
                              onPressed: () {
                                // قم بإضافة الوظيفة التي تريد تنفيذها عند الضغط على الزر هنا
                                print("Book Now button pressed");
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: const Color(0xff001c30),
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 20, vertical: 15),
                              ),
                              child: const Text(
                                'Book Now',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontFamily: "pacifico",
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
      ),
    );
  }

  List<Widget> _buildDayButtons() {
    return List.generate(
      _days.length,
      (index) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: ElevatedButton(
          onPressed: () {
            setState(() {
              _selectedDayIndex = index;
            });
            tripSchadualController.selectedDay = index;
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: _selectedDayIndex == index
                ? const Color(0xff001c30)
                : const Color(0xff64CCC5),
          ),
          child: Text(
            _days[index],
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w700,
              color: Colors.white,
              fontFamily: "K2D",
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildActivitiesForSelectedDay(TripSchadual tripSchadual) {
    final List<Map<String, dynamic>> activities = [
      {
        'name': tripSchadual.firstDayPlace1,
        'image': tripSchadual.frist_DAY_PHOTO1,
        'time': tripSchadual.time1,
        'day': 'Day 1',
        'price': tripSchadual.priceFor1Day
      },
      {
        'name': tripSchadual.firstDayPlace2,
        'image': tripSchadual.frist_DAY_PHOTO2,
        'time': tripSchadual.time2,
        'day': 'Day 1',
        'price': tripSchadual.priceFor1Day
      },
      {
        'name': tripSchadual.firstDayPlace3,
        'image': tripSchadual.frist_DAY_PHOTO3,
        'time': tripSchadual.time3,
        'day': 'Day 1',
        'price': tripSchadual.priceFor1Day
      },
      {
        'name': tripSchadual.secondDayPlace1,
        'image': tripSchadual.second_DAY_PHOTO1,
        'time': tripSchadual.time4,
        'day': 'Day 2',
        'price': tripSchadual.priceFor2Day
      },
      {
        'name': tripSchadual.secondDayPlace2,
        'image': tripSchadual.second_DAY_PHOTO2,
        'time': tripSchadual.time5,
        'day': 'Day 2',
        'price': tripSchadual.priceFor2Day
      },
      {
        'name': tripSchadual.secondDayPlace3,
        'image': tripSchadual.second_DAY_PHOTO3,
        'time': tripSchadual.time6,
        'day': 'Day 2',
        'price': tripSchadual.priceFor2Day
      },
      {
        'name': tripSchadual.ThirdDayPlace1,
        'image': tripSchadual.Third_DAY_PHOTO1,
        'time': tripSchadual.time7,
        'day': 'Day 3',
        'price': tripSchadual.priceFor3Day
      },
      {
        'name': tripSchadual.ThirdDayPlace2,
        'image': tripSchadual.Third_DAY_PHOTO2,
        'time': tripSchadual.time8,
        'day': 'Day 3',
        'price': tripSchadual.priceFor3Day
      },
      {
        'name': tripSchadual.ThirdDayPlace3,
        'image': tripSchadual.Third_DAY_PHOTO3,
        'time': tripSchadual.time9,
        'day': 'Day 3',
        'price': tripSchadual.priceFor3Day
      },
      {
        'name': tripSchadual.FourthDayPlace1,
        'image': tripSchadual.Fourth_DAY_PHOTO1,
        'time': tripSchadual.time10,
        'day': 'Day 4',
        'price': tripSchadual.priceFor4Day
      },
      {
        'name': tripSchadual.FourthDayPlace2,
        'image': tripSchadual.Fourth_DAY_PHOTO2,
        'time': tripSchadual.time11,
        'day': 'Day 4',
        'price': tripSchadual.priceFor4Day
      },
      {
        'name': tripSchadual.FourthDayPlace3,
        'image': tripSchadual.Fourth_DAY_PHOTO3,
        'time': tripSchadual.time12,
        'day': 'Day 4',
        'price': tripSchadual.priceFor4Day
      },
      {
        'name': tripSchadual.FifthDayPlace1,
        'image': tripSchadual.Fifth_DAY_PHOTO1,
        'time': tripSchadual.time13,
        'day': 'Day 5',
        'price': tripSchadual.priceFor5Day
      },
      {
        'name': tripSchadual.FifthDayPlace2,
        'image': tripSchadual.Fifth_DAY_PHOTO2,
        'time': tripSchadual.time14,
        'day': 'Day 5',
        'price': tripSchadual.priceFor5Day
      },
      {
        'name': tripSchadual.FifthDayPlace3,
        'image': tripSchadual.Fifth_DAY_PHOTO3,
        'time': tripSchadual.time15,
        'day': 'Day 5',
        'price': tripSchadual.priceFor5Day
      },
    ];

    final List<Map<String, dynamic>> activitiesForSelectedDay = activities
        .where((activity) => activity['day'] == _days[_selectedDayIndex])
        .toList();

    final List<Map<String, dynamic>> displayedActivities =
        activitiesForSelectedDay.length > 3
            ? activitiesForSelectedDay.sublist(0, 3)
            : activitiesForSelectedDay;

    return Expanded(
      child: ListView.builder(
        itemCount: displayedActivities.length,
        itemBuilder: (context, index) {
          final activity = displayedActivities[index];
          return Column(
            children: [
              Card(
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                          flex: 1,
                          child: getImageNetwork(
                              url: activity['image'], width: 100, height: 100)),
                      const SizedBox(width: 16.0),
                      Expanded(
                        flex: 3,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              activity['name'],
                              style: const TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.w700,
                                color: Color(0xff001c30),
                                fontFamily: "K2D",
                              ),
                            ),
                            const SizedBox(height: 50),
                            Row(
                              children: [
                                const SizedBox(
                                  width: 200,
                                ),
                                Text(
                                  '${activity['time']}',
                                  style: const TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w900,
                                    color: Color(0xff176B87),
                                    fontFamily: "K2D",
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 10),
            ],
          );
        },
      ),
    );
  }

  Widget _buildTotalPriceForEachDay(TripSchadual tripSchadual) {
    final List<Map<String, dynamic>> activities = [
      {
        'name': tripSchadual.firstDayPlace1,
        'image': tripSchadual.frist_DAY_PHOTO1,
        'time': tripSchadual.time1,
        'day': 'Day 1',
        'price': tripSchadual.priceFor1Day
      },
      {
        'name': tripSchadual.firstDayPlace2,
        'image': tripSchadual.frist_DAY_PHOTO2,
        'time': tripSchadual.time2,
        'day': 'Day 1',
        'price': tripSchadual.priceFor1Day
      },
      {
        'name': tripSchadual.firstDayPlace3,
        'image': tripSchadual.frist_DAY_PHOTO3,
        'time': tripSchadual.time3,
        'day': 'Day 1',
        'price': tripSchadual.priceFor1Day
      },
      {
        'name': tripSchadual.secondDayPlace1,
        'image': tripSchadual.second_DAY_PHOTO1,
        'time': tripSchadual.time4,
        'day': 'Day 2',
        'price': tripSchadual.priceFor2Day
      },
      {
        'name': tripSchadual.secondDayPlace2,
        'image': tripSchadual.second_DAY_PHOTO2,
        'time': tripSchadual.time5,
        'day': 'Day 2',
        'price': tripSchadual.priceFor2Day
      },
      {
        'name': tripSchadual.secondDayPlace3,
        'image': tripSchadual.second_DAY_PHOTO3,
        'time': tripSchadual.time6,
        'day': 'Day 2',
        'price': tripSchadual.priceFor2Day
      },
      {
        'name': tripSchadual.ThirdDayPlace1,
        'image': tripSchadual.Third_DAY_PHOTO1,
        'time': tripSchadual.time7,
        'day': 'Day 3',
        'price': tripSchadual.priceFor3Day
      },
      {
        'name': tripSchadual.ThirdDayPlace2,
        'image': tripSchadual.Third_DAY_PHOTO2,
        'time': tripSchadual.time8,
        'day': 'Day 3',
        'price': tripSchadual.priceFor3Day
      },
      {
        'name': tripSchadual.ThirdDayPlace3,
        'image': tripSchadual.Third_DAY_PHOTO3,
        'time': tripSchadual.time9,
        'day': 'Day 3',
        'price': tripSchadual.priceFor3Day
      },
      {
        'name': tripSchadual.FourthDayPlace1,
        'image': tripSchadual.Fourth_DAY_PHOTO1,
        'time': tripSchadual.time10,
        'day': 'Day 4',
        'price': tripSchadual.priceFor4Day
      },
      {
        'name': tripSchadual.FourthDayPlace2,
        'image': tripSchadual.Fourth_DAY_PHOTO2,
        'time': tripSchadual.time11,
        'day': 'Day 4',
        'price': tripSchadual.priceFor4Day
      },
      {
        'name': tripSchadual.FourthDayPlace3,
        'image': tripSchadual.Fourth_DAY_PHOTO3,
        'time': tripSchadual.time12,
        'day': 'Day 4',
        'price': tripSchadual.priceFor4Day
      },
      {
        'name': tripSchadual.FifthDayPlace1,
        'image': tripSchadual.Fifth_DAY_PHOTO1,
        'time': tripSchadual.time13,
        'day': 'Day 5',
        'price': tripSchadual.priceFor5Day
      },
      {
        'name': tripSchadual.FifthDayPlace2,
        'image': tripSchadual.Fifth_DAY_PHOTO2,
        'time': tripSchadual.time14,
        'day': 'Day 5',
        'price': tripSchadual.priceFor5Day
      },
      {
        'name': tripSchadual.FifthDayPlace3,
        'image': tripSchadual.Fifth_DAY_PHOTO3,
        'time': tripSchadual.time15,
        'day': 'Day 5',
        'price': tripSchadual.priceFor5Day
      },
    ];
    double totalPrice;
    if (_selectedDayIndex == 4) {
      totalPrice =
          activities.fold(0.0, (sum, activity) => sum + activity['price']);
    } else {
      totalPrice = activities
          .where((activity) => activity['day'] == _days[_selectedDayIndex])
          .fold(0.0, (sum, activity) => sum + activity['price']);
    }

    return Padding(
      padding: const EdgeInsets.all(13.0),
      child: Text(
        _selectedDayIndex == 4
            ? 'Total Price for all days: \$${totalPrice.toStringAsFixed(2)}'
            : 'Total Price for this day: \$${totalPrice.toStringAsFixed(2)}',
        style: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: Color(0xff001c30),
          fontFamily: "K2D",
        ),
      ),
    );
  }
}
