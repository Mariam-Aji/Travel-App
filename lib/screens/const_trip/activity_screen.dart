import 'package:flutter/material.dart';

class ActivityTable extends StatefulWidget {
  @override
  _ActivityTableState createState() => _ActivityTableState();
}

class _ActivityTableState extends State<ActivityTable> {
  int _selectedDayIndex = 0;

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
      body: Column(
        children: [
          const SizedBox(height: 20),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: _buildDayButtons(),
            ),
          ),
          const SizedBox(height: 20),
          _buildActivitiesForSelectedDay(),
          const SizedBox(height: 20),
          _buildTotalPriceForEachDay(),
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

  Widget _buildActivitiesForSelectedDay() {
    final List<Map<String, dynamic>> activities = [
      {
        'name': 'Activity 1',
        'image': 'assets/act2.png',
        'time': '10:00 AM',
        'day': 'Day 1',
        'price': 20.0
      },
      {
        'name': 'Activity 2',
        'image': 'assets/act2.png',
        'time': '02:00 PM',
        'day': 'Day 1',
        'price': 20.0
      },
      {
        'name': 'Activity 3',
        'image': 'assets/act2.png',
        'time': '07:00 PM',
        'day': 'Day 1',
        'price': 20.0
      },
      {
        'name': 'Activity 4',
        'image': 'assets/act2.png',
        'time': '09:00 AM',
        'day': 'Day 2',
        'price': 20.0
      },
      {
        'name': 'Activity 5',
        'image': 'assets/act2.png',
        'time': '03:30 PM',
        'day': 'Day 2',
        'price': 20.0
      },
      {
        'name': 'Activity 6',
        'image': 'assets/act2.png',
        'time': '08:00 PM',
        'day': 'Day 2',
        'price': 20.0
      },
      {
        'name': 'Activity 7',
        'image': 'assets/act2.png',
        'time': '11:00 AM',
        'day': 'Day 3',
        'price': 20.0
      },
      {
        'name': 'Activity 8',
        'image': 'assets/act2.png',
        'time': '05:00 PM',
        'day': 'Day 3',
        'price': 20.0
      },
      {
        'name': 'Activity 9',
        'image': 'assets/act2.png',
        'time': '09:30 PM',
        'day': 'Day 3',
        'price': 20.0
      },
      {
        'name': 'Activity 10',
        'image': 'assets/act2.png',
        'time': '01:00 PM',
        'day': 'Day 4',
        'price': 20.0
      },
      {
        'name': 'Activity 11',
        'image': 'assets/act2.png',
        'time': '06:00 PM',
        'day': 'Day 4',
        'price': 20.0
      },
      {
        'name': 'Activity 12',
        'image': 'assets/act2.png',
        'time': '10:30 PM',
        'day': 'Day 4',
        'price': 20.0
      },
      {
        'name': 'Activity 13',
        'image': 'assets/act2.png',
        'time': '11:30 AM',
        'day': 'Day 5',
        'price': 20.0
      },
      {
        'name': 'Activity 14',
        'image': 'assets/act2.png',
        'time': '04:00 PM',
        'day': 'Day 5',
        'price': 20.0
      },
      {
        'name': 'Activity 15',
        'image': 'assets/act2.png',
        'time': '08:30 PM',
        'day': 'Day 5',
        'price': 20.0
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
                        child: Image.asset(
                          activity['image'],
                          height: 100,
                          width: 100,
                        ),
                      ),
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
                                    fontSize: 18,
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

  Widget _buildTotalPriceForEachDay() {
    final List<Map<String, dynamic>> activities = [
      {
        'name': 'Activity 1',
        'image': 'assets/act2.png',
        'time': '10:00 AM',
        'day': 'Day 1',
        'price': 20.0
      },
      {
        'name': 'Activity 2',
        'image': 'assets/act2.png',
        'time': '02:00 PM',
        'day': 'Day 1',
        'price': 20.0
      },
      {
        'name': 'Activity 3',
        'image': 'assets/act2.png',
        'time': '07:00 PM',
        'day': 'Day 1',
        'price': 20.0
      },
      {
        'name': 'Activity 4',
        'image': 'assets/act2.png',
        'time': '09:00 AM',
        'day': 'Day 2',
        'price': 20.0
      },
      {
        'name': 'Activity 5',
        'image': 'assets/act2.png',
        'time': '03:30 PM',
        'day': 'Day 2',
        'price': 20.0
      },
      {
        'name': 'Activity 6',
        'image': 'assets/act2.png',
        'time': '08:00 PM',
        'day': 'Day 2',
        'price': 20.0
      },
      {
        'name': 'Activity 7',
        'image': 'assets/act2.png',
        'time': '11:00 AM',
        'day': 'Day 3',
        'price': 20.0
      },
      {
        'name': 'Activity 8',
        'image': 'assets/act2.png',
        'time': '05:00 PM',
        'day': 'Day 3',
        'price': 20.0
      },
      {
        'name': 'Activity 9',
        'image': 'assets/act2.png',
        'time': '09:30 PM',
        'day': 'Day 3',
        'price': 20.0
      },
      {
        'name': 'Activity 10',
        'image': 'assets/act2.png',
        'time': '01:00 PM',
        'day': 'Day 4',
        'price': 20.0
      },
      {
        'name': 'Activity 11',
        'image': 'assets/act2.png',
        'time': '06:00 PM',
        'day': 'Day 4',
        'price': 20.0
      },
      {
        'name': 'Activity 12',
        'image': 'assets/act2.png',
        'time': '10:30 PM',
        'day': 'Day 4',
        'price': 20.0
      },
      {
        'name': 'Activity 13',
        'image': 'assets/act2.png',
        'time': '11:30 AM',
        'day': 'Day 5',
        'price': 20.0
      },
      {
        'name': 'Activity 14',
        'image': 'assets/act2.png',
        'time': '04:00 PM',
        'day': 'Day 5',
        'price': 20.0
      },
      {
        'name': 'Activity 15',
        'image': 'assets/act2.png',
        'time': '08:30 PM',
        'day': 'Day 5',
        'price': 20.0
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
