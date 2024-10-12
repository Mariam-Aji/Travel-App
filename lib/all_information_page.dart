import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AllInformationPage extends StatelessWidget {
  AllInformationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          SliverAppBar.medium(
            iconTheme: IconThemeData(color: Color(0xffDAFFFB)),
            backgroundColor: Color(0xff64CCC5),
            leading: IconButton(
                onPressed: () {
                  Get.back();
                },
                icon: Icon(Icons.navigate_before_rounded)),
            title: const Center(
              child: Text("Journey plan",
                  style: TextStyle(
                      fontSize: 20,
                      fontFamily: "K2D",
                      color: Color(0xffDAFFFB))),
            ),
          ),
          SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 20,
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 24),
                  child: Text(
                    "Hotel",
                    style: TextStyle(
                        fontSize: 20,
                        color: Color(0xff001C30),
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Container(
                    height: 150,
                    width: 400,
                    child: const Card(
                      clipBehavior: Clip.antiAlias,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Image(
                            image: AssetImage(
                              "image/R (4).jpg",
                            ),
                            width: 400,
                            fit: BoxFit.fitWidth,
                          ),
                          Positioned(
                            top: 95,
                            left: 35,
                            child: Text(
                              "Malls London",
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Color(0xffDAFFFB),
                                  fontFamily: "K2D"),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 24),
                  child: Text(
                    "Flights",
                    style: TextStyle(
                        fontSize: 20,
                        color: Color(0xff001C30),
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20, top: 20),
                      child: Container(
                        height: 225,
                        width: 150,
                        child: Card(
                          clipBehavior: Clip.antiAlias,
                          color: Color(0xffDAFFFB),
                          child: Stack(
                            children: [
                              Container(
                                height: 225,
                                width: 150,
                                color: Color(0xffDAFFFB),
                              ),
                              const Positioned(
                                top: 20,
                                left: 40,
                                child: CircleAvatar(
                                  backgroundColor: Color(0xffDAFFFB),
                                  radius: 30,
                                  child: CircleAvatar(
                                    backgroundImage: AssetImage("image/m.jpg"),
                                    radius: 25,
                                  ),
                                ),
                              ),
                              const Positioned(
                                  top: 100,
                                  left: 40,
                                  child: Text(
                                    "Syria",
                                    style: TextStyle(
                                        fontSize: 28,
                                        color: Color(0xff176B87),
                                        fontFamily: "Pacifico"),
                                  )),
                              const Positioned(
                                  top: 150,
                                  left: 15,
                                  child: Text(
                                    "21/3  18:00 ",
                                    style: TextStyle(
                                        fontSize: 20,
                                        color: Color(0xff001C30),
                                        fontFamily: "K2D"),
                                  )),
                            ],
                          ),
                        ),
                      ),
                    ),
                    const Icon(
                      Icons.trending_flat_rounded,
                      size: 50,
                      color: Color(0xff001C30),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Container(
                        height: 225,
                        width: 150,
                        child: Card(
                          clipBehavior: Clip.antiAlias,
                          color: Color(0xffDAFFFB),
                          child: Stack(
                            children: [
                              Container(
                                height: 225,
                                width: 150,
                                color: Color(0xffDAFFFB),
                              ),
                              const Positioned(
                                top: 20,
                                left: 40,
                                child: CircleAvatar(
                                  backgroundColor: Color(0xffDAFFFB),
                                  radius: 30,
                                  child: CircleAvatar(
                                    backgroundImage:
                                        AssetImage("image/m(1).jpg"),
                                    radius: 25,
                                  ),
                                ),
                              ),
                              const Positioned(
                                  top: 100,
                                  left: 40,
                                  child: Text(
                                    "USA",
                                    style: TextStyle(
                                        fontSize: 28,
                                        color: Color(0xff176B87),
                                        fontFamily: "Pacifico"),
                                  )),
                              const Positioned(
                                  top: 150,
                                  left: 15,
                                  child: Text(
                                    "21/3  23:00 ",
                                    style: TextStyle(
                                        fontSize: 20,
                                        color: Color(0xff001C30),
                                        fontFamily: "K2D"),
                                  )),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 24),
                  child: Text(
                    "Flights",
                    style: TextStyle(
                        fontSize: 20,
                        color: Color(0xff001C30),
                        fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(left: 24),
                      child: Text(
                        "Hotel(5 nights)",
                        style: TextStyle(
                            fontSize: 20,
                            color: Color(0xff176B87),
                            fontFamily: "K2D"),
                      ),
                    ),
                    SizedBox(
                      width: 18,
                    ),
                    Container(
                      height: 50,
                      width: 50,
                      child: const Divider(
                        thickness: 2,
                        endIndent: 10,
                        color: Color(0xff64CCC5),
                      ),
                    ),
                    Container(
                      height: 50,
                      width: 50,
                      child: const Divider(
                        thickness: 2,
                        endIndent: 10,
                        color: Color(0xff64CCC5),
                      ),
                    ),
                    Container(
                      height: 50,
                      width: 50,
                      child: const Divider(
                        thickness: 2,
                        endIndent: 10,
                        color: Color(0xff64CCC5),
                      ),
                    ),
                    Text(
                      "199",
                      style: TextStyle(
                          color: Color(0xff176B87),
                          fontFamily: "K2D",
                          fontSize: 20),
                    ),
                  ],
                ),
                Row(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(left: 24),
                      child: Text(
                        "Ticket(5 people)",
                        style: TextStyle(
                            fontSize: 20,
                            color: Color(0xff176B87),
                            fontFamily: "K2D"),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: 50,
                      width: 50,
                      child: const Divider(
                        thickness: 2,
                        endIndent: 10,
                        color: Color(0xff64CCC5),
                      ),
                    ),
                    Container(
                      height: 50,
                      width: 50,
                      child: const Divider(
                        thickness: 2,
                        endIndent: 10,
                        color: Color(0xff64CCC5),
                      ),
                    ),
                    Container(
                      height: 50,
                      width: 50,
                      child: const Divider(
                        thickness: 2,
                        endIndent: 10,
                        color: Color(0xff64CCC5),
                      ),
                    ),
                    Text(
                      "199",
                      style: TextStyle(
                          color: Color(0xff176B87),
                          fontFamily: "K2D",
                          fontSize: 20),
                    ),
                  ],
                ),
                Row(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(left: 24),
                      child: Text(
                        "Transportation",
                        style: TextStyle(
                            fontSize: 20,
                            color: Color(0xff176B87),
                            fontFamily: "K2D"),
                      ),
                    ),
                    SizedBox(
                      width: 22,
                    ),
                    Container(
                      height: 50,
                      width: 50,
                      child: const Divider(
                        thickness: 2,
                        endIndent: 10,
                        color: Color(0xff64CCC5),
                      ),
                    ),
                    Container(
                      height: 50,
                      width: 50,
                      child: const Divider(
                        thickness: 2,
                        endIndent: 10,
                        color: Color(0xff64CCC5),
                      ),
                    ),
                    Container(
                      height: 50,
                      width: 50,
                      child: const Divider(
                        thickness: 2,
                        endIndent: 10,
                        color: Color(0xff64CCC5),
                      ),
                    ),
                    Text(
                      "199",
                      style: TextStyle(
                          color: Color(0xff176B87),
                          fontFamily: "K2D",
                          fontSize: 20),
                    ),
                  ],
                ),
                Row(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(left: 24),
                      child: Text(
                        "Total Price",
                        style: TextStyle(
                            fontSize: 20,
                            color: Color(0xff176B87),
                            fontFamily: "K2D"),
                      ),
                    ),
                    SizedBox(
                      width: 55,
                    ),
                    Container(
                      height: 50,
                      width: 50,
                      child: const Divider(
                        thickness: 2,
                        endIndent: 10,
                        color: Color(0xff64CCC5),
                      ),
                    ),
                    Container(
                      height: 50,
                      width: 50,
                      child: const Divider(
                        thickness: 2,
                        endIndent: 10,
                        color: Color(0xff64CCC5),
                      ),
                    ),
                    Container(
                      height: 50,
                      width: 50,
                      child: const Divider(
                        thickness: 2,
                        endIndent: 10,
                        color: Color(0xff64CCC5),
                      ),
                    ),
                    Text(
                      "199",
                      style: TextStyle(
                          color: Color(0xff176B87),
                          fontFamily: "K2D",
                          fontSize: 20),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 60, right: 60),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xff001C30),
                    ),
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (context) => AlertDialog(
                          backgroundColor: Colors.white,
                          content: const Text(
                            "Are you sure you want to confirm your reservation?",
                            style: TextStyle(
                                fontSize: 20,
                                color: Color(0xff001C30),
                                fontFamily: "K2D"),
                          ),
                          actions: [
                            ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Color(0xff64CCC5),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(8)))),
                              child: const Text(
                                "Yes",
                                style: TextStyle(
                                    fontSize: 20,
                                    color: Color(0xffDAFFFB),
                                    fontFamily: "K2D"),
                              ),
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Color(0xff64CCC5),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(8)))),
                              child: const Text(
                                "No",
                                style: TextStyle(
                                    fontSize: 20,
                                    color: Color(0xffDAFFFB),
                                    fontFamily: "K2D"),
                              ),
                            )
                          ],
                        ),
                      );
                    },
                    child: Center(
                      child: Text(
                        "Book Now",
                        style: TextStyle(
                            color: Color(0xffDAFFFB),
                            fontSize: 24,
                            fontFamily: "Pacifico"),
                      ),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
