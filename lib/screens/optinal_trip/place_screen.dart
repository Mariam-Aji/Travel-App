import 'package:flutter/material.dart';
import 'package:travel_app/screens/optinal_trip/trip_schadual/activity_screen.dart';

class PlacesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color(0xff64ccc5),
        title: Text(
          "Choose the table of activities you want to do:",
          style: TextStyle(
            color: Colors.white,
            fontFamily: "pacifico",
            fontSize: 24,
          ),
        ),
      ),
      body: Column(
        children: [
          _buildPlaceCard(context, 'Activities table 1'),
          _buildPlaceCard(context, 'Activities table 2'),
          _buildPlaceCard(context, 'Activities table 3'),
          _buildPlaceCard(context, 'Activities table 4'),
          _buildPlaceCard(context, 'Activities table 5'),
        ],
      ),
    );
  }

  Widget _buildPlaceCard(BuildContext context, String placeName) {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ActivityTableOptinalTrip(),
            ),
          );
        },
        child: Container(
          width: double.infinity,
          child: Card(
            color: Color(0xffDAFFFB),
            elevation: 5,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  placeName,
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff001c30),
                    fontFamily: "K2D",
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
