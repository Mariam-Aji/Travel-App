import 'package:flutter/material.dart';

Widget buildBookNowButton() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.end,
    children: [
      GestureDetector(
        onTap: () async {},
        child: Container(
          decoration: BoxDecoration(
            color: Color(0xff001c30),
            borderRadius: BorderRadius.circular(18.0),
          ),
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Text(
            'Book now',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontFamily: "pacifico",
              fontSize: 20,
            ),
          ),
        ),
      ),
    ],
  );
}
