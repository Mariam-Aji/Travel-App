import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:travel_app/controller/consttrip_controller.dart';
import 'package:travel_app/controller/optional_trip_controller.dart';
import 'package:travel_app/controller/ticket_type_controller.dart';

class TicketPage extends StatefulWidget {
  TicketPage(
      {super.key,
      required this.contientid,
      required this.seasonid,
      required this.sectionid});
  final String contientid;
  final String seasonid;
  final String sectionid;
  @override
  State<TicketPage> createState() => _TicketPageState(
      contientid: contientid, seasonid: seasonid, sectionid: sectionid);
}

class _TicketPageState extends State<TicketPage> {
  String activeButtonType = '';
  String activeButtonType2 = '';
  Widget s = Text('');
  _TicketPageState(
      {required this.contientid,
      required this.seasonid,
      required this.sectionid});
  final String contientid;
  final String seasonid;
  final String sectionid;

  @override
  void initState() {
    ConsttripController Controller = Get.put(ConsttripController(
        contientid: contientid,
        seasonid: seasonid,
        sectionid: sectionid,
        typeid: 2.toString()));
    s = SingleChildScrollView(
      child: SizedBox(
          height: 700,
          child: Obx(() => Controller.consttripList.isEmpty
              ? const Center(
                  child: CircularProgressIndicator(
                    color: Color(0xff001c30),
                  ),
                )
              : GridView.builder(
                  padding: EdgeInsets.all(8),
                  itemCount: Controller.consttripList.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 15,
                      mainAxisSpacing: 15,
                      mainAxisExtent: 190),
                  itemBuilder: (context, index) => Card(
                      clipBehavior: Clip.antiAlias,
                      color: Color(0xffDAFFFB),
                      child: Stack(children: [
                        Padding(
                          padding: EdgeInsets.all(8),
                          child: Card(
                            clipBehavior: Clip.antiAlias,
                            child: Container(
                              height: 110,
                              child: Image.network(
                                Controller.getImage(Controller
                                    .consttripList[index].photo2!
                                    .toString()),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                            top: 125,
                            left: 16,
                            child: Text(
                              Controller.consttripList[index].destination!
                                  .toString(),
                              style: const TextStyle(
                                  fontSize: 20,
                                  color: Color(0xff001C30),
                                  fontFamily: "K2D"),
                            )),
                        Positioned(
                          top: 150,
                          left: 83,
                          child: Row(children: [
                            Text(
                              Controller.consttripList[index].price!.toString(),
                              style: const TextStyle(
                                  fontSize: 18,
                                  color: Color.fromARGB(255, 59, 223, 95),
                                  fontFamily: "K2D"),
                            ),
                            const SizedBox(
                              width: 3,
                            ),
                            const Icon(
                              Icons.monetization_on_rounded,
                              color: Color.fromARGB(255, 59, 223, 95),
                              size: 19,
                            )
                          ]),
                        )
                      ]))))),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    TicketTypeController typeController = Get.put(TicketTypeController());
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
              child: Text("Trips ",
                  style: TextStyle(
                      fontSize: 20,
                      fontFamily: "K2D",
                      color: Color(0xffDAFFFB))),
            ),
          ),
          SliverToBoxAdapter(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  Obx(() => typeController.ticketTypeList.isEmpty
                      ? const Center(
                          child: CircularProgressIndicator(
                            color: Color(0xff001c30),
                          ),
                        )
                      : Container(
                          height: 70,
                          child: Row(
                            children: [
                              Expanded(
                                child: ListView.builder(
                                  scrollDirection: Axis.horizontal,
                                  itemCount:
                                      typeController.ticketTypeList.length - 1,
                                  itemBuilder: (context, index) => Padding(
                                    padding: const EdgeInsets.only(
                                        left: 40, top: 8, bottom: 8),
                                    child: SizedBox(
                                      height: 50,
                                      child: ElevatedButton(
                                          onPressed: () {
                                            setState(() {
                                              if (typeController
                                                      .ticketTypeList[index]
                                                      .type
                                                      .toString() ==
                                                  "OptionalTrip") {
                                                activeButtonType =
                                                    "OptionalTrip";
                                                OptionalTripController
                                                    Controller1 = Get.put(
                                                        OptionalTripController(
                                                            contientid:
                                                                contientid,
                                                            seasonid: seasonid,
                                                            sectionid:
                                                                sectionid,
                                                            typeid:
                                                                1.toString()));
                                                s = SingleChildScrollView(
                                                  child: SizedBox(
                                                      height: 700,
                                                      child: Obx(() => Controller1
                                                              .optionaltripList
                                                              .isEmpty
                                                          ? const Center(
                                                              child:
                                                                  CircularProgressIndicator(
                                                                color: Color(
                                                                    0xff001c30),
                                                              ),
                                                            )
                                                          : GridView.builder(
                                                              padding:
                                                                  EdgeInsets.all(8),
                                                              itemCount: Controller1.optionaltripList.length,
                                                              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, crossAxisSpacing: 15, mainAxisSpacing: 15, mainAxisExtent: 190),
                                                              itemBuilder: (context, index) => Card(
                                                                  clipBehavior: Clip.antiAlias,
                                                                  color: Color(0xffDAFFFB),
                                                                  child: Stack(children: [
                                                                    Padding(
                                                                      padding:
                                                                          EdgeInsets.all(
                                                                              8),
                                                                      child:
                                                                          Card(
                                                                        clipBehavior:
                                                                            Clip.antiAlias,
                                                                        child:
                                                                            Container(
                                                                          height:
                                                                              110,
                                                                          child:
                                                                              Image.network(
                                                                            Controller1.getImage(Controller1.optionaltripList[index].journyPhoto2!.toString()),
                                                                            fit:
                                                                                BoxFit.cover,
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                    Positioned(
                                                                        top:
                                                                            125,
                                                                        left:
                                                                            16,
                                                                        child:
                                                                            Text(
                                                                          Controller1
                                                                              .optionaltripList[index]
                                                                              .destination!
                                                                              .toString(),
                                                                          style: const TextStyle(
                                                                              fontSize: 20,
                                                                              color: Color(0xff001C30),
                                                                              fontFamily: "K2D"),
                                                                        )),
                                                                    Positioned(
                                                                      top: 150,
                                                                      left: 83,
                                                                      child: Row(
                                                                          children: [
                                                                            Text(
                                                                              Controller1.optionaltripList[index].price!.toString(),
                                                                              style: const TextStyle(fontSize: 18, color: Color.fromARGB(255, 59, 223, 95), fontFamily: "K2D"),
                                                                            ),
                                                                            const SizedBox(
                                                                              width: 3,
                                                                            ),
                                                                            const Icon(
                                                                              Icons.monetization_on_rounded,
                                                                              color: Color.fromARGB(255, 59, 223, 95),
                                                                              size: 19,
                                                                            )
                                                                          ]),
                                                                    )
                                                                  ]))))),
                                                );
                                              } else {
                                                activeButtonType = '';
                                              }
                                              if (typeController
                                                      .ticketTypeList[index]
                                                      .type
                                                      .toString() ==
                                                  "ConstTrip") {
                                                activeButtonType2 = "ConstTrip";
                                                ConsttripController Controller =
                                                    Get.put(ConsttripController(
                                                        contientid: contientid,
                                                        seasonid: seasonid,
                                                        sectionid: sectionid,
                                                        typeid: 2.toString()));
                                                s = SingleChildScrollView(
                                                  child: SizedBox(
                                                      height: 700,
                                                      child: Obx(() => Controller
                                                              .consttripList
                                                              .isEmpty
                                                          ? const Center(
                                                              child:
                                                                  CircularProgressIndicator(
                                                                color: Color(
                                                                    0xff001c30),
                                                              ),
                                                            )
                                                          : GridView.builder(
                                                              padding: EdgeInsets.all(
                                                                  8),
                                                              itemCount:
                                                                  Controller.consttripList.length,
                                                              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, crossAxisSpacing: 15, mainAxisSpacing: 15, mainAxisExtent: 190),
                                                              itemBuilder: (context, index) => Card(
                                                                  clipBehavior: Clip.antiAlias,
                                                                  color: Color(0xffDAFFFB),
                                                                  child: Stack(children: [
                                                                    Padding(
                                                                      padding:
                                                                          EdgeInsets.all(
                                                                              8),
                                                                      child:
                                                                          Card(
                                                                        clipBehavior:
                                                                            Clip.antiAlias,
                                                                        child:
                                                                            Container(
                                                                          height:
                                                                              110,
                                                                          child:
                                                                              Image.network(
                                                                            Controller.getImage(Controller.consttripList[index].photo2!.toString()),
                                                                            fit:
                                                                                BoxFit.cover,
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                    Positioned(
                                                                        top:
                                                                            125,
                                                                        left:
                                                                            16,
                                                                        child:
                                                                            Text(
                                                                          Controller
                                                                              .consttripList[index]
                                                                              .destination!
                                                                              .toString(),
                                                                          style: const TextStyle(
                                                                              fontSize: 20,
                                                                              color: Color(0xff001C30),
                                                                              fontFamily: "K2D"),
                                                                        )),
                                                                    Positioned(
                                                                      top: 150,
                                                                      left: 83,
                                                                      child: Row(
                                                                          children: [
                                                                            Text(
                                                                              Controller.consttripList[index].price!.toString(),
                                                                              style: const TextStyle(fontSize: 18, color: Color.fromARGB(255, 59, 223, 95), fontFamily: "K2D"),
                                                                            ),
                                                                            const SizedBox(
                                                                              width: 3,
                                                                            ),
                                                                            const Icon(
                                                                              Icons.monetization_on_rounded,
                                                                              color: Color.fromARGB(255, 59, 223, 95),
                                                                              size: 19,
                                                                            )
                                                                          ]),
                                                                    )
                                                                  ]))))),
                                                );
                                              } else {
                                                activeButtonType2 = '';
                                              }
                                            });
                                          },
                                          style: ElevatedButton.styleFrom(
                                            backgroundColor: typeController
                                                            .ticketTypeList[
                                                                index]
                                                            .type
                                                            .toString() ==
                                                        "OptionalTrip" &&
                                                    activeButtonType ==
                                                        "OptionalTrip"
                                                ? Color(0xff64CCC5)
                                                : typeController
                                                                .ticketTypeList[
                                                                    index]
                                                                .type
                                                                .toString() ==
                                                            "ConstTrip" &&
                                                        activeButtonType2 ==
                                                            "ConstTrip"
                                                    ? Color(0xff64CCC5)
                                                    : Colors.white,
                                            side: const BorderSide(
                                                color: Color(0xff001C30),
                                                width: 2),
                                          ),
                                          child: Text(
                                            typeController
                                                .ticketTypeList[index].type
                                                .toString(),
                                            style: const TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w800,
                                              color: Color(0xff001C30),
                                            ),
                                          )),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )),
                  s,
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
