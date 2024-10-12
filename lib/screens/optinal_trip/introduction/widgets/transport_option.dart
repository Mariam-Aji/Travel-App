import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:travel_app/core/images/network_image.dart';

import 'package:travel_app/models/transport.dart';

class TransportOption extends StatefulWidget {
  final Transport transport;
  bool isSelected = false;
  final Function(bool?)? onChanged;
  TransportOption(
      {Key? key,
      required this.transport,
      required this.isSelected,
      required this.onChanged})
      : super(key: key);

  @override
  _TransportOptionState createState() => _TransportOptionState();
}

class _TransportOptionState extends State<TransportOption> {
  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
      activeColor: const Color(0xff001c30), // تغيير لون زر الـ checkbox هنا
      title: Row(
        children: [
          getImageNetwork(url: widget.transport.photo, width: 50, height: 50),
          const SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.transport.transportationName,
                style: const TextStyle(
                  fontFamily: "K2D",
                ),
              ),
              Text(
                '\$${widget.transport.price}',
                style: const TextStyle(color: Colors.grey),
              ),
            ],
          ),
        ],
      ),
      value: widget.isSelected,
      onChanged: widget.onChanged,
    );
  }
}
