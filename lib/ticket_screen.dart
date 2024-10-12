import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:travel_app/controller/ticket_controller.dart';

class TicketScreen extends StatefulWidget {
  TicketScreen({
    super.key,
    required this.contientid,
  });
  final String contientid;

  @override
  State<TicketScreen> createState() =>
      _TicketScreenState(contientid: contientid);
}

class _TicketScreenState extends State<TicketScreen> {
  _TicketScreenState({
    required this.contientid,
  });
  final String contientid;
  late TicketController controller;

  @override
  void initState() {
    controller = Get.put(TicketController(contientid: contientid));

    super.initState();
  }

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
              child: Text("Ticket ",
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
                  SingleChildScrollView(
                    child: SizedBox(
                        height: 700,
                        child: Obx(() => controller.ticketList.isEmpty
                            ? const Center(
                                child: CircularProgressIndicator(
                                  color: Color(0xff001c30),
                                ),
                              )
                            : GridView.builder(
                                padding: EdgeInsets.all(8),
                                itemCount: controller.ticketList.length,
                                gridDelegate:
                                    SliverGridDelegateWithFixedCrossAxisCount(
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
                                              controller.getImage(controller
                                                  .ticketList[index]
                                                  .journeyPhoto2
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
                                            controller
                                                .ticketList[index].destination
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
                                            controller.ticketList[index].price
                                                .toString(),
                                            style: const TextStyle(
                                                fontSize: 18,
                                                color: Color.fromARGB(
                                                    255, 59, 223, 95),
                                                fontFamily: "K2D"),
                                          ),
                                          const SizedBox(
                                            width: 3,
                                          ),
                                          const Icon(
                                            Icons.monetization_on_rounded,
                                            color: Color.fromARGB(
                                                255, 59, 223, 95),
                                            size: 19,
                                          )
                                        ]),
                                      )
                                    ]))))),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
