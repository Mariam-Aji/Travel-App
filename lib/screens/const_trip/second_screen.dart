import 'package:flutter/material.dart';
import 'package:travel_app/screens/const_trip/hotel_screen.dart';
import 'package:travel_app/screens/const_trip/reviews/reviews_screen.dart';

class IntroductionConstTripScreen extends StatefulWidget {
  const IntroductionConstTripScreen({super.key});

  @override
  State<IntroductionConstTripScreen> createState() =>
      _IntroductionConstTripScreenState();
}

class _IntroductionConstTripScreenState
    extends State<IntroductionConstTripScreen> {
  final PageController _pageController = PageController();
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffDAFFFB),
      body: Column(
        children: [
          SizedBox(
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
          ),
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
                    const Text(
                      'Far stretched white sandy beaches flanking the turquoise blue Indian Ocean, stilted waterside villas, a romantic candlelit dinner with a glass of champagne at the gazebo on water – Maldives is all about luxury and tryst with nature.',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black38,
                        fontFamily: "K2D",
                      ),
                      textAlign: TextAlign.start,
                    ),
                    const SizedBox(height: 5),
                    Row(
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
                        const SizedBox(width: 120),
                        GestureDetector(
                          onTap: () {},
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ReviewsScreen()),
                              );
                            },
                            child: const Text(
                              'see reviews',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Color(0xff176BB7),
                                fontFamily: "K2D",
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      'Ticket price: \$50',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff001c30),
                        fontFamily: "K2D",
                      ),
                    ),
                    const SizedBox(height: 10),
                    Container(
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
                              Icons.airplanemode_active,
                              color: Colors.white,
                            ),
                          ),
                          const SizedBox(width: 20),
                          const Text(
                            'Traveling by plane',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                              color: Color(0xff176BB7),
                              fontFamily: "K2D",
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 5),
                    Container(
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
                              Icons.apartment,
                              color: Colors.white,
                            ),
                          ),
                          const SizedBox(width: 20),
                          const Text(
                            'Hotels',
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
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => HotelDetailsScreen()),
                              );
                            },
                            child: const Icon(
                              Icons.arrow_forward,
                              color: Colors.black38,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 5),
                    Container(
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
                              Icons.family_restroom,
                              color: Colors.white,
                            ),
                          ),
                          const SizedBox(width: 20),
                          const Text(
                            'Number of family members',
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
                              showDialog(
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
                                    content: TextField(
                                      cursorColor: Colors.black,
                                      controller: _controller,
                                      keyboardType: TextInputType.number,
                                      decoration: const InputDecoration(
                                        hintText:
                                            'Enter number of family members',
                                        fillColor: Colors.black,
                                        focusColor: Colors.black,
                                        hoverColor: Colors.black,
                                      ),
                                    ),
                                    actions: <Widget>[
                                      TextButton(
                                        onPressed: () {
                                          // يمكنك تنفيذ أي عمليات تريدها هنا، مثل إرسال القيمة أو إغلاق الشاشة
                                          Navigator.of(context).pop();
                                        }, // تحديد لون النص هنا
                                        style: ButtonStyle(
                                          backgroundColor: MaterialStateProperty
                                              .all(const Color(
                                                  0xff64ccc5)), // تحديد لون الخلفية هنا
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
                            },
                            child: const Icon(
                              Icons.arrow_forward,
                              color: Colors.black38,
                            ),
                          ),
                        ],
                      ),
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
                            onTap: () {},
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
}

class TransportOption extends StatefulWidget {
  final IconData icon;
  final String label;
  final double price;
  final Color checkBoxColor;

  const TransportOption({
    Key? key,
    required this.icon,
    required this.label,
    required this.price,
    required this.checkBoxColor,
  }) : super(key: key);

  @override
  _TransportOptionState createState() => _TransportOptionState();
}

class _TransportOptionState extends State<TransportOption> {
  bool _isChecked = false;

  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
      activeColor: widget.checkBoxColor, // تغيير لون زر الـ checkbox هنا
      title: Row(
        children: [
          Icon(widget.icon),
          const SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.label,
                style: const TextStyle(
                  fontFamily: "K2D",
                ),
              ),
              Text(
                '\$${widget.price}',
                style: const TextStyle(color: Colors.grey),
              ),
            ],
          ),
        ],
      ),
      value: _isChecked,
      onChanged: (value) {
        setState(() {
          _isChecked = value ?? false;
        });
      },
    );
  }
}
