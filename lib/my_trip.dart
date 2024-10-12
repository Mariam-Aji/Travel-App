import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:travel_app/controller/my_reservation_controller.dart';

class MyReservation extends StatefulWidget {
  MyReservation({super.key, required this.userid, required this.token});
  final String userid;
  final String token;

  @override
  State<MyReservation> createState() =>
      _MyReservationState(userid: userid, token: token);
}

class _MyReservationState extends State<MyReservation> {
  _MyReservationState({required this.userid, required this.token});
  final String userid;
  final String token;
  late MyReservationController controller;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = Get.put(MyReservationController(userId: userid));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'My Trips',
          style: TextStyle(
              fontSize: 22,
              color: Color(0xff001C30),
              fontWeight: FontWeight.w800),
        ),
      ),
      body: Obx(() => controller.loading.value
          ? Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 16.0, top: 16),
                  child: Text(
                    "Optional Trip",
                    style: TextStyle(
                        fontSize: 22,
                        color: Color(0xff64CCC5),
                        fontWeight: FontWeight.w800),
                  ),
                ),
                Obx(() => controller.optionalList.isNotEmpty
                    ? Expanded(
                        child: ListView.builder(
                          itemCount: 1,
                          itemBuilder: (context, index) {
                            // final booking = bookings[index];
                            return Obx(() => Column(
                                children: controller.optionalList
                                    .map((e) => Card(
                                          clipBehavior: Clip.antiAlias,
                                          margin: EdgeInsets.all(8),
                                          child: Row(
                                            children: [
                                              Image.asset(
                                                'image/mm.jpg',
                                                width: 100,
                                                height: 100,
                                                fit: BoxFit.cover,
                                              ),
                                              SizedBox(width: 8),
                                              Expanded(
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Text(
                                                      e.destinationEn
                                                          .toString(),
                                                      style: TextStyle(
                                                          fontSize: 16,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          color: Color(
                                                              0xff176B87)),
                                                    ),
                                                    Text(
                                                        'Price:${e.totalPrice.toString()}'),
                                                    Text(
                                                        'Payment Status: ${e.paymentStatus.toString()}'),
                                                  ],
                                                ),
                                              ),
                                              IconButton(
                                                icon: Icon(
                                                  Icons.edit,
                                                  color: Color(0xff001C30),
                                                ),
                                                onPressed: () {},
                                              ),
                                              IconButton(
                                                icon: Icon(
                                                  Icons.delete,
                                                  color: Colors.red,
                                                ),
                                                onPressed: () {
                                                     controller.deleteOptional(
                                                    e.id.toString(), token);
                                                },
                                              ),
                                            ],
                                          ),
                                        ))
                                    .toList()));
                          },
                        ),
                      )
                    : Expanded(
                        child: Center(
                          child: Text(
                            'No Avaliable Reservation',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Color(0xff001C30)),
                          ),
                        ),
                      )),
                const Padding(
                  padding: const EdgeInsets.only(left: 16.0, top: 16),
                  child: Text(
                    "Const Trip",
                    style: TextStyle(
                        fontSize: 22,
                        color: Color(0xff64CCC5),
                        fontWeight: FontWeight.w800),
                  ),
                ),
                Obx(() => controller.constList.isNotEmpty
                    ? Expanded(
                        child: ListView.builder(
                          itemCount: 1,
                          itemBuilder: (context, index) {
                            // final booking = bookings[index];
                            return Obx(() => Column(
                                children: controller.constList
                                    .map(
                                      (e) => Card(
                                        margin: EdgeInsets.all(8),
                                        child: Row(
                                          children: [
                                            Image.asset(
                                              'image/mm.jpg',
                                              width: 100,
                                              height: 100,
                                              fit: BoxFit.cover,
                                            ),
                                            SizedBox(width: 8),
                                            Expanded(
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Text(
                                                    e.destinationEn.toString(),
                                                    style: TextStyle(
                                                        fontSize: 16,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color:
                                                            Color(0xff176B87)),
                                                  ),
                                                  Text(
                                                      'Price:${e.totalPrice.toString()}'),
                                                  Text(
                                                      'Payment Status:${e.paymentStatus.toString()}'),
                                                ],
                                              ),
                                            ),
                                            IconButton(
                                              icon: Icon(
                                                Icons.edit,
                                                color: Color(0xff001C30),
                                              ),
                                              onPressed: () {},
                                            ),
                                            IconButton(
                                              icon: Icon(
                                                Icons.delete,
                                                color: Colors.red,
                                              ),
                                              onPressed: () {
                                                controller.deleteConst(
                                                    e.id.toString(), token);
                                              },
                                            ),
                                          ],
                                        ),
                                      ),
                                    )
                                    .toList()));
                          },
                        ),
                      )
                    : Expanded(
                        child: Center(
                          child: Text(
                            'No Avaliable Reservation',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Color(0xff001C30)),
                          ),
                        ),
                      )),
                const Padding(
                  padding: const EdgeInsets.only(left: 16.0, top: 16),
                  child: Text(
                    "Ticket",
                    style: TextStyle(
                        fontSize: 22,
                        color: Color(0xff64CCC5),
                        fontWeight: FontWeight.w800),
                  ),
                ),
                Obx(() => controller.ticketList.isNotEmpty
                    ? Expanded(
                        child: ListView.builder(
                          itemCount: 1,
                          itemBuilder: (context, index) {
                            //   final booking = bookings[index];
                            return Obx(() => Column(
                                children: controller.ticketList
                                    .map(
                                      (e) => Card(
                                        margin: EdgeInsets.all(8),
                                        child: Row(
                                          children: [
                                            Image.asset(
                                              'image/mm.jpg',
                                              width: 100,
                                              height: 100,
                                              fit: BoxFit.cover,
                                            ),
                                            SizedBox(width: 8),
                                            Expanded(
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Text(
                                                    e.destinationEn.toString(),
                                                    style: TextStyle(
                                                        fontSize: 16,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color:
                                                            Color(0xff176B87)),
                                                  ),
                                                  Text(
                                                      'Price:${e.totalPrice.toString()}'),
                                                  Text(
                                                      'Payment Status: ${e.paymentStatus.toString()}'),
                                                ],
                                              ),
                                            ),
                                            IconButton(
                                              icon: Icon(
                                                Icons.edit,
                                                color: Color(0xff001C30),
                                              ),
                                              onPressed: () {},
                                            ),
                                            IconButton(
                                              icon: Icon(
                                                Icons.delete,
                                                color: Colors.red,
                                              ),
                                              onPressed: () {
                                                controller.delete(
                                                    e.id.toString(), token);
                                              },
                                            ),
                                          ],
                                        ),
                                      ),
                                    )
                                    .toList()));
                          },
                        ),
                      )
                    : Expanded(
                        child: Center(
                          child: Text(
                            'No Avaliable Reservation',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Color(0xff001C30)),
                          ),
                        ),
                      )),
              ],
            )
          : const Center(
              child: Text(
                'No reservation',
                style: TextStyle(
                    fontSize: 25,
                    color: Color(0xff001C30),
                    fontWeight: FontWeight.bold),
              ),
            )),
    );
  }
}
