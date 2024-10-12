import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:travel_app/all_information_page.dart';
import 'package:travel_app/categories_page.dart';
import 'package:travel_app/controller/contients_controller.dart';
import 'package:travel_app/controller/popular_controller.dart';
import 'package:travel_app/controller/recent_trip_controller.dart';
import 'package:travel_app/my_trip.dart';
import 'package:travel_app/profile_screen.dart';
import 'package:travel_app/screens/optinal_trip/introduction/introduction_screen.dart';

import 'package:travel_app/search_page.dart';
import 'package:travel_app/ticket_screen.dart';

class HomePage extends StatefulWidget {
  HomePage(this.fcmtoken, {super.key, required this.id, required this.token});
  final String fcmtoken;
  final String id;
  final String token;
  @override
  State<HomePage> createState() => _HomePageState(id, token, fcmtoken);
}

class _HomePageState extends State<HomePage> {
  _HomePageState(this.id, this.token, this.fcmtoken);
  String id = "";
  String token = "";
  String fcmtoken = "";

  //final TextEditingController? SearchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    ContientsController contientsController =
        Get.put(ContientsController(token));
    RecentTripController Controller = Get.put(RecentTripController());
    PopularController controller1 = Get.put(PopularController(token: token));
    return Scaffold(
      backgroundColor: Colors.white,
      drawer: Drawer(
        child: ListView(
          children: [
            InkWell(
              onTap: () {
                Get.to(ProfileScreen());
              },
              child: const UserAccountsDrawerHeader(
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("image/M2.jpeg"), fit: BoxFit.cover),
                  color: Color(0xFF6DDCD0),
                ),
                accountName: Text(
                  "Mariam Aji",
                  style: TextStyle(
                      color: Color(0xffDAFFFB),
                      fontFamily: "K2D",
                      fontSize: 20),
                ),
                currentAccountPicture: CircleAvatar(
                  backgroundColor: Colors.white,
                  child: Icon(
                    color: Color(0xff001C30),
                    Icons.person,
                    size: 50,
                  ),
                ),
                accountEmail: Text(
                  "mariam@gmail.com",
                  style: TextStyle(
                      color: Color(0xffDAFFFB),
                      fontFamily: "K2D",
                      fontSize: 18),
                ),
              ),
            ), //Padding(padding: EdgeInsets.only(top:20)),
            ListTile(
              onTap: () {
                Get.to(MyReservation(
                  userid: id.toString(),
                  token: token,
                ));
              },
              //dense: true,
              title: Text("My Trips",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Color(0xff001C30))),
              leading: Icon(
                Icons.travel_explore,
                size: 25.0,
                color: Color(0xff001C30),
              ),
            ),
            Divider(),
            ListTile(
              onTap: () {
                showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    backgroundColor: Colors.white,
                    content: SizedBox(
                      height: 90,
                      child: Column(
                        children: [
                          Row(
                            children: [
                              SizedBox(
                                width: 20,
                              ),
                              const Text(
                                "English",
                                style: TextStyle(
                                    fontSize: 20,
                                    color: Color(0xff176B87),
                                    fontFamily: "K2D"),
                              ),
                              SizedBox(
                                width: 70,
                              ),
                              InkWell(
                                child: Icon(Icons.check_box_outline_blank),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: [
                              SizedBox(
                                width: 20,
                              ),
                              const Text(
                                "Arabic",
                                style: TextStyle(
                                    fontSize: 20,
                                    color: Color(0xff176B87),
                                    fontFamily: "K2D"),
                              ),
                              SizedBox(
                                width: 80,
                              ),
                              InkWell(
                                child: Icon(Icons.check_box_outline_blank),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                    actions: [
                      Center(
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xff64CCC5),
                              shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(8)))),
                          child: const Text(
                            "ok",
                            style: TextStyle(
                                fontSize: 20,
                                color: Color(0xffDAFFFB),
                                fontFamily: "K2D"),
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
              //dense: true,
              title: Text("Language",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Color(0xff001C30))),
              leading: Icon(
                Icons.language,
                size: 25.0,
                color: Color(0xff001C30),
              ),
            ),
            Divider(),
            ListTile(
              onTap: () {},
              //dense: true,
              title: Text("Dark Mode",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Color(0xff001C30))),
              leading: Icon(
                Icons.dark_mode,
                size: 25.0,
                color: Color(0xff001C30),
              ),
            ),
            Divider(),
            ListTile(
              onTap: () {
                contientsController.Delete(fcmtoken.toString());
              },
              //dense: true,
              title: Text("Delete Account",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Color(0xff001C30))),
              leading: Icon(
                Icons.delete,
                size: 25.0,
                color: Color(0xff001C30),
              ),
            ),
            Divider(),

            ListTile(
              onTap: () {
                contientsController.logout(fcmtoken.toString());
              },
              //dense: true,
              title: Text("Log out",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Color(0xff001C30))),
              leading: Icon(
                Icons.logout,
                size: 25.0,
                color: Color(0xff001C30),
              ),
            ),
            Divider(),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 250,
              width: 450,
              clipBehavior: Clip.antiAlias,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                        'image/R (5).jpg',
                      ),
                      fit: BoxFit.cover)),
              child: Stack(
                children: [
                  Positioned(
                    left: 30,
                    top: 120,
                    child: Container(
                      width: 150,
                      height: 50,
                      child: Card(
                        color: Colors.white.withOpacity(0.6),
                        shape: RoundedRectangleBorder(
                            side:
                                BorderSide(color: Color(0xff001C30), width: 2),
                            borderRadius: BorderRadius.all(Radius.circular(8))),
                        child: InkWell(
                          onTap: () {
                            //Get.to(TicketScreen(contientid: 1.toString()));
                            showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return AlertDialog(
                                  title: Text(
                                    'Choose a continent',
                                    style: TextStyle(
                                        color: Color(0xff001C30),
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20),
                                  ),
                                  content: Obx(
                                    () => contientsController
                                            .contientsList.isEmpty
                                        ? Center(
                                            child: CircularProgressIndicator(
                                              color: Color(0xff001c30),
                                            ),
                                          )
                                        : SizedBox(
                                            width: double.maxFinite,
                                            height: 300,
                                            child: ListView.builder(
                                              itemCount: contientsController
                                                  .contientsList.length,
                                              itemBuilder: (context, index) =>
                                                  Container(
                                                height: 100,
                                                margin:
                                                    const EdgeInsets.symmetric(
                                                        vertical: 8.0,
                                                        horizontal: 16.0),
                                                child: InkWell(
                                                  onTap: () {
                                                    Get.to(TicketScreen(
                                                        contientid:
                                                            contientsController
                                                                .contientsList[
                                                                    index]
                                                                .id
                                                                .toString()));
                                                  },
                                                  child: Card(
                                                    color: Color(0xffDAFFFB),
                                                    clipBehavior:
                                                        Clip.antiAlias,
                                                    shape:
                                                        RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        20)),
                                                    child: Stack(
                                                      alignment:
                                                          Alignment.center,
                                                      children: [
                                                        Text(
                                                          contientsController
                                                              .contientsList[
                                                                  index]
                                                              .continentsName
                                                              .toString(),
                                                          style: TextStyle(
                                                              color: Color(
                                                                  0xff176B87),
                                                              fontSize: 20,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                  ),
                                  actions: <Widget>[
                                    TextButton(
                                      child: Text(
                                        'Cancel',
                                        style:
                                            TextStyle(color: Color(0xff64CCC5)),
                                      ),
                                      onPressed: () {
                                        Navigator.of(context).pop();
                                      },
                                    ),
                                  ],
                                );
                              },
                            );
                          },
                          child: Center(
                              child: Text(
                            "Tickets",
                            style: TextStyle(
                                color: Color(0xff001C30),
                                fontSize: 24,
                                fontFamily: "K2D"),
                          )),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 190,
                    top: 120,
                    child: Container(
                      width: 150,
                      height: 50,
                      child: Card(
                        color: Colors.white.withOpacity(0.6),
                        shape: RoundedRectangleBorder(
                            side:
                                BorderSide(color: Color(0xff001C30), width: 2),
                            borderRadius: BorderRadius.all(Radius.circular(8))),
                        child: InkWell(
                          onTap: () {
                            Get.to(SearchPage());
                          },
                          child: Center(
                              child: Text(
                            "Search",
                            style: TextStyle(
                                color: Color(0xff001C30),
                                fontSize: 24,
                                fontFamily: "K2D"),
                          )),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 190,
                    top: 180,
                    child: Container(
                      width: 150,
                      height: 50,
                      child: Card(
                        color: Colors.white.withOpacity(0.6),
                        shape: RoundedRectangleBorder(
                            side:
                                BorderSide(color: Color(0xff001C30), width: 2),
                            borderRadius: BorderRadius.all(Radius.circular(8))),
                        child: Center(
                            child: Text(
                          "Resturent",
                          style: TextStyle(
                              color: Color(0xff001C30),
                              fontSize: 24,
                              fontFamily: "K2D"),
                        )),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 30,
                    top: 180,
                    child: Container(
                      width: 150,
                      height: 50,
                      child: Card(
                        color: Colors.white.withOpacity(0.6),
                        shape: RoundedRectangleBorder(
                            side:
                                BorderSide(color: Color(0xff001C30), width: 2),
                            borderRadius: BorderRadius.all(Radius.circular(8))),
                        child: Center(
                            child: Text(
                          "Maps",
                          style: TextStyle(
                              color: Color(0xff001C30),
                              fontSize: 24,
                              fontFamily: "K2D"),
                        )),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            /* const Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Text(
                    "Find your next journey ",
                    style: TextStyle(
                        color: Color(0xff64CCC5),
                        fontSize: 20,
                        fontWeight: FontWeight.w700),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 20, top: 16),
                  child: Text(
                    "Welcome back....",
                    style: TextStyle(
                        color: Color(0xff176B87),
                        fontSize: 28,
                        fontWeight: FontWeight.bold),
                  ),
                ),*/

            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 16.0),
              child: Text(
                "Popular journeys",
                style: TextStyle(
                    fontSize: 22,
                    color: Color(0xff001C30),
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 160,
              child: Row(
                children: [
                  Expanded(
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 1,
                      itemBuilder: (context, index) => Obx(
                        () => Row(
                            children: controller1.popularList
                                .map(
                                  (e) => Padding(
                                      padding: const EdgeInsets.only(
                                          left: 16,
                                          right: 8,
                                          top: 8,
                                          bottom: 8),
                                      child: Container(
                                        width: 250,
                                        child: InkWell(
                                          onTap: () {
                                            Get.to(
                                              AllInformationPage(),
                                            );
                                          },
                                          child: Card(
                                            clipBehavior: Clip.antiAlias,
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(16),
                                            ),
                                            child: Stack(
                                              clipBehavior: Clip.antiAlias,
                                              children: [
                                                Container(
                                                    height: 144,
                                                    width: 250,
                                                    child: Image.network(
                                                      controller1.getImage(
                                                          e.photo1.toString()),
                                                      fit: BoxFit.cover,
                                                    )),
                                                Positioned(
                                                    top: 80,
                                                    left: 20,
                                                    child: Text(
                                                      e.destinationEn
                                                          .toString(),
                                                      style: TextStyle(
                                                          color:
                                                              Color(0xffDAFFFB),
                                                          fontSize: 24,
                                                          fontFamily: "K2D"),
                                                    )),
                                                Positioned(
                                                    left: 175,
                                                    top: 100,
                                                    child: Row(
                                                      children: [
                                                        Text(e.avg.toString(),
                                                            style: TextStyle(
                                                                color: Colors
                                                                    .deepOrangeAccent,
                                                                fontSize: 20,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500)),
                                                        SizedBox(
                                                          width: 5,
                                                        ),
                                                        Icon(
                                                          Icons.star,
                                                          color: Colors
                                                              .deepOrangeAccent,
                                                        )
                                                      ],
                                                    ))
                                              ],
                                            ),
                                          ),
                                        ),
                                      )),
                                )
                                .toList()),
                      ),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 16.0),
              child: Text(
                "Recent journeys",
                style: TextStyle(
                    fontSize: 22,
                    color: Color(0xff001C30),
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 225,
              child: Row(
                children: [
                  Expanded(
                    child: ListView.builder(
                        itemCount: 1,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) => Obx(() => Row(
                            children: Controller.recenttripList
                                .map((e) => InkWell(
                                      onTap: () => Get.to(
                                          IntroductionScreenOptinalTrip()),
                                      child: Container(
                                        width: 175,
                                        child: Padding(
                                          padding: const EdgeInsets.only(
                                              left: 16, top: 8, bottom: 8),
                                          child: Card(
                                            clipBehavior: Clip.antiAlias,
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(16),
                                            ),
                                            child: Stack(
                                              children: [
                                                Container(
                                                  height: 225,
                                                  width: 175,
                                                  child: Image.network(
                                                    Controller.getImage(
                                                        e.photo2!.toString()),
                                                    fit: BoxFit.cover,
                                                  ),
                                                ),
                                                Positioned(
                                                    top: 135,
                                                    left: 12,
                                                    child: Text(
                                                      e.destination.toString(),
                                                      style: const TextStyle(
                                                          color:
                                                              Color(0xffDAFFFB),
                                                          fontSize: 24,
                                                          fontFamily: "K2D"),
                                                    )),
                                                Positioned(
                                                    left: 93,
                                                    top: 165,
                                                    child: Row(
                                                      children: [
                                                        Text(e.avg!.toString(),
                                                            style: TextStyle(
                                                                color: Color(
                                                                    0xffDAFFFB),
                                                                fontSize: 15,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500)),
                                                        SizedBox(
                                                          width: 5,
                                                        ),
                                                        Icon(
                                                          Icons.star,
                                                          color: Colors
                                                              .deepOrangeAccent,
                                                        )
                                                      ],
                                                    )),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    ))
                                .toList()))),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 16.0),
              child: Text(
                "Popular categories",
                style: TextStyle(
                    fontSize: 22,
                    color: Color(0xff001C30),
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 100,
              child: Row(
                children: [
                  Expanded(
                    child: ListView.builder(
                        itemCount: 1,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) => Obx(() => Row(
                            children: contientsController.contientsList
                                .map((e) => Container(
                                      width: 100,
                                      height: 98,
                                      child: Padding(
                                        padding: const EdgeInsets.only(
                                            left: 16.0, top: 8, bottom: 8),
                                        child: InkWell(
                                          onTap: () {
                                            Get.to(
                                              CategoriesPage(
                                                  contientid: e.id.toString()),
                                            );
                                          },
                                          child: Card(
                                            clipBehavior: Clip.antiAlias,
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(100)),
                                            child: Stack(
                                              alignment: Alignment.center,
                                              children: [
                                                Container(
                                                    width: 100,
                                                    height: 82,
                                                    child: Image.asset(
                                                      'image/R (1).jpg',
                                                      fit: BoxFit.cover,
                                                    )),
                                                Text(
                                                  e.continentsName.toString(),
                                                  style: TextStyle(
                                                      color: Color(0xffDAFFFB),
                                                      fontSize: 18,
                                                      fontFamily: "K2D"),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    ))
                                .toList()))),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
