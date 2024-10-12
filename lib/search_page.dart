import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:travel_app/controller/search_controller.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  SeController controller = Get.put(SeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xff64CCC5),
          iconTheme: const IconThemeData(color: Color(0xffDAFFFB)),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 30, left: 40),
              child: SizedBox(
                width: 300,
                height: 40,
                child: TextField(
                    controller: controller.seController.value,
                    decoration: InputDecoration(
                      border: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(30),
                          ),
                          borderSide: BorderSide(
                            color: Color(0xffDAFFFB),
                          )),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: const BorderSide(
                            color: Color(0xffDAFFFB),
                          )),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: const BorderSide(
                          color: Color(0xffDAFFFB),
                        ),
                      ),
                      focusColor: const Color(0xffDAFFFB),
                      prefixIconColor: const Color(0xffDAFFFB),
                      suffixIcon: InkWell(
                        onTap: () {
                          setState(() {
                            controller.getTrip();
                            controller.searchList;
                            controller.loading.value;
                            controller.getconstTrip();
                            controller.constList;
                            controller.getTicket();
                            controller.ticketList;
                            controller.getResturant();
                            controller.resturantList;
                            controller.getHotel();
                            controller.hotelList;
                            controller.getScadual();
                            controller.scadualList;
                          });
                        },
                        child: const Icon(
                          Icons.search_rounded,
                          size: 35,
                          color: Color(0xff176B87),
                        ),
                      ),
                    )),
              ),
            )
          ],
        ),
        body: Obx(
          () => controller.loading.value
              ? SingleChildScrollView(
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                      const Padding(
                        padding: EdgeInsets.only(left: 20.0, top: 20),
                        child: Text(
                          'Optional Trip',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff176B87)),
                        ),
                      ),
                      SizedBox(
                        height: 200,
                        child: Obx(() => controller.searchList.isNotEmpty
                            ? Row(
                                children: [
                                  Expanded(
                                      child: ListView.builder(
                                    scrollDirection: Axis.horizontal,
                                    itemCount: 1,
                                    itemBuilder: (context, index) =>
                                        Obx(() => Row(
                                            children: controller.searchList
                                                .map((e) => Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              left: 12.0,
                                                              top: 8,
                                                              right: 8),
                                                      child: SizedBox(
                                                        height: 180,
                                                        width: 200,
                                                        child: Card(
                                                            clipBehavior:
                                                                Clip.antiAlias,
                                                            color: const Color(
                                                                0xffDAFFFB),
                                                            child: Stack(
                                                                children: [
                                                                  Padding(
                                                                    padding: const EdgeInsets
                                                                        .only(
                                                                        left: 8,
                                                                        right:
                                                                            8,
                                                                        bottom:
                                                                            8,
                                                                        top:
                                                                            16),
                                                                    child: Card(
                                                                      clipBehavior:
                                                                          Clip.antiAlias,
                                                                      child:
                                                                          Container(
                                                                        height:
                                                                            110,
                                                                        child: Image
                                                                            .network(
                                                                          controller.getImage(e
                                                                              .journyPhoto2
                                                                              .toString()),
                                                                          width:
                                                                              180,
                                                                          fit: BoxFit
                                                                              .cover,
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  Positioned(
                                                                      top: 133,
                                                                      left: 16,
                                                                      child:
                                                                          Text(
                                                                        e.destinationEn
                                                                            .toString(),
                                                                        style: const TextStyle(
                                                                            fontSize:
                                                                                20,
                                                                            color:
                                                                                Color(0xff001C30),
                                                                            fontFamily: "K2D"),
                                                                      )),
                                                                  Positioned(
                                                                    top: 153,
                                                                    left: 110,
                                                                    child: Row(
                                                                        children: [
                                                                          Text(
                                                                            e.price.toString(),
                                                                            style: const TextStyle(
                                                                                fontSize: 15,
                                                                                color: Color.fromARGB(255, 45, 212, 106),
                                                                                fontFamily: "K2D"),
                                                                          ),
                                                                          const SizedBox(
                                                                            width:
                                                                                3,
                                                                          ),
                                                                          const Icon(
                                                                            Icons.monetization_on,
                                                                            color: Color.fromARGB(
                                                                                255,
                                                                                45,
                                                                                212,
                                                                                106),
                                                                            size:
                                                                                18,
                                                                          )
                                                                        ]),
                                                                  )
                                                                ])),
                                                      ),
                                                    ))
                                                .toList())),
                                  )),
                                ],
                              )
                            : const Center(
                                child: Text(
                                  'No Avaliable Trip',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w700,
                                      color: Color(0xff64CCC5)),
                                ),
                              )),
                      ),
                      const Padding(
                        padding: const EdgeInsets.only(top: 16, left: 16),
                        child: Text(
                          'Const Trip',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff176B87)),
                        ),
                      ),
                      SizedBox(
                          height: 200,
                          child: Obx(() => controller.constList.isNotEmpty
                              ? Row(
                                  children: [
                                    Expanded(
                                        child: ListView.builder(
                                            scrollDirection: Axis.horizontal,
                                            itemCount: 1,
                                            itemBuilder: (context, index) =>
                                                Obx(() => Row(
                                                    children:
                                                        controller.constList
                                                            .map((e) => Padding(
                                                                  padding:
                                                                      const EdgeInsets
                                                                          .only(
                                                                          left:
                                                                              16.0,
                                                                          top:
                                                                              8),
                                                                  child:
                                                                      SizedBox(
                                                                    height: 180,
                                                                    width: 200,
                                                                    child: Card(
                                                                      clipBehavior:
                                                                          Clip.antiAlias,
                                                                      color: Color(
                                                                          0xffDAFFFB),
                                                                      child: Stack(
                                                                          children: [
                                                                            Padding(
                                                                              padding: const EdgeInsets.only(left: 8, right: 8, bottom: 8, top: 16),
                                                                              child: Card(
                                                                                clipBehavior: Clip.antiAlias,
                                                                                child: Container(
                                                                                  height: 110,
                                                                                  child: Image.network(
                                                                                    controller.getImage(e.photo2.toString()),
                                                                                    width: 180,
                                                                                    fit: BoxFit.cover,
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            ),
                                                                            Positioned(
                                                                                top: 133,
                                                                                left: 16,
                                                                                child: Text(
                                                                                  e.destinationEn.toString(),
                                                                                  style: const TextStyle(fontSize: 20, color: Color(0xff001C30), fontFamily: "K2D"),
                                                                                )),
                                                                            Positioned(
                                                                              top: 145,
                                                                              left: 140,
                                                                              child: Row(children: [
                                                                                Text(
                                                                                  e.avg.toString(),
                                                                                  style: TextStyle(fontSize: 15, color: Colors.deepOrangeAccent, fontFamily: "K2D"),
                                                                                ),
                                                                                const SizedBox(
                                                                                  width: 3,
                                                                                ),
                                                                                Icon(Icons.star, color: Colors.deepOrangeAccent)
                                                                              ]),
                                                                            )
                                                                          ]),
                                                                    ),
                                                                  ),
                                                                ))
                                                            .toList()))))
                                  ],
                                )
                              : const Center(
                                  child: Text(
                                    'No Avaliable Trip',
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w700,
                                        color: Color(0xff64CCC5)),
                                  ),
                                ))),
                      const Padding(
                        padding: const EdgeInsets.only(top: 16, left: 16),
                        child: Text(
                          'Ticket',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff176B87)),
                        ),
                      ),
                      SizedBox(
                        height: 200,
                        child: Obx(() => controller.ticketList.isNotEmpty
                            ? Row(children: [
                                Expanded(
                                    child: ListView.builder(
                                  scrollDirection: Axis.horizontal,
                                  itemCount: 1,
                                  itemBuilder: (context, index) => Obx(
                                    () => Row(
                                        children: controller.ticketList
                                            .map(
                                              (e) => Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 16.0, top: 8),
                                                child: SizedBox(
                                                  height: 180,
                                                  width: 200,
                                                  child: Card(
                                                    clipBehavior:
                                                        Clip.antiAlias,
                                                    color: Color(0xffDAFFFB),
                                                    child: Stack(children: [
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .only(
                                                                left: 8,
                                                                right: 8,
                                                                bottom: 8,
                                                                top: 16),
                                                        child: Card(
                                                          clipBehavior:
                                                              Clip.antiAlias,
                                                          child: Container(
                                                            height: 110,
                                                            child:
                                                                Image.network(
                                                              controller.getImage(e
                                                                  .journyPhoto2
                                                                  .toString()),
                                                              width: 180,
                                                              fit: BoxFit.cover,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      Positioned(
                                                          top: 133,
                                                          left: 16,
                                                          child: Text(
                                                            e.destinationEn
                                                                .toString(),
                                                            style: const TextStyle(
                                                                fontSize: 20,
                                                                color: Color(
                                                                    0xff001C30),
                                                                fontFamily:
                                                                    "K2D"),
                                                          )),
                                                      Positioned(
                                                        top: 153,
                                                        left: 110,
                                                        child: Row(children: [
                                                          Text(
                                                            e.price.toString(),
                                                            style: const TextStyle(
                                                                fontSize: 15,
                                                                color: Color
                                                                    .fromARGB(
                                                                        255,
                                                                        45,
                                                                        212,
                                                                        106),
                                                                fontFamily:
                                                                    "K2D"),
                                                          ),
                                                          const SizedBox(
                                                            width: 3,
                                                          ),
                                                          Icon(
                                                            Icons
                                                                .monetization_on,
                                                            color:
                                                                Color.fromARGB(
                                                                    255,
                                                                    45,
                                                                    212,
                                                                    106),
                                                            size: 18,
                                                          )
                                                        ]),
                                                      )
                                                    ]),
                                                  ),
                                                ),
                                              ),
                                            )
                                            .toList()),
                                  ),
                                ))
                              ])
                            : const Center(
                                child: Text(
                                  'No Avaliable Ticket',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w700,
                                      color: Color(0xff64CCC5)),
                                ),
                              )),
                      ),
                      const Padding(
                        padding: const EdgeInsets.only(top: 16, left: 16),
                        child: Text(
                          'Restaurant',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff176B87)),
                        ),
                      ),
                      SizedBox(
                        height: 200,
                        child: Obx(() => controller.resturantList.isNotEmpty
                            ? Row(children: [
                                Expanded(
                                    child: ListView.builder(
                                        scrollDirection: Axis.horizontal,
                                        itemCount: 1,
                                        itemBuilder: (context, index) => Obx(
                                              () => Row(
                                                  children:
                                                      controller.resturantList
                                                          .map((e) => Padding(
                                                                padding:
                                                                    const EdgeInsets
                                                                        .only(
                                                                        left:
                                                                            16.0,
                                                                        top: 8),
                                                                child: SizedBox(
                                                                  height: 180,
                                                                  width: 200,
                                                                  child: Card(
                                                                    clipBehavior:
                                                                        Clip.antiAlias,
                                                                    color: Color(
                                                                        0xffDAFFFB),
                                                                    child: Stack(
                                                                        children: [
                                                                          Padding(
                                                                            padding: EdgeInsets.only(
                                                                                left: 8,
                                                                                right: 8,
                                                                                bottom: 8,
                                                                                top: 16),
                                                                            child:
                                                                                Card(
                                                                              clipBehavior: Clip.antiAlias,
                                                                              child: Container(
                                                                                height: 110,
                                                                                child: Image.network(
                                                                                  controller.getImage(e.fphoto.toString()),
                                                                                  width: 180,
                                                                                  fit: BoxFit.cover,
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          ),
                                                                          Positioned(
                                                                              top: 133,
                                                                              left: 16,
                                                                              child: Text(
                                                                                e.typeEn.toString(),
                                                                                style: TextStyle(fontSize: 20, color: Color(0xff001C30), fontFamily: "K2D"),
                                                                              )),
                                                                          Positioned(
                                                                            top:
                                                                                153,
                                                                            left:
                                                                                110,
                                                                            child:
                                                                                Row(children: [
                                                                              Text(
                                                                                e.totalPrice.toString(),
                                                                                style: const TextStyle(fontSize: 15, color: Color.fromARGB(255, 45, 212, 106), fontFamily: "K2D"),
                                                                              ),
                                                                              const SizedBox(
                                                                                width: 3,
                                                                              ),
                                                                              const Icon(
                                                                                Icons.monetization_on,
                                                                                color: Color.fromARGB(255, 45, 212, 106),
                                                                                size: 18,
                                                                              )
                                                                            ]),
                                                                          )
                                                                        ]),
                                                                  ),
                                                                ),
                                                              ))
                                                          .toList()),
                                            )))
                              ])
                            : const Center(
                                child: Text(
                                  'No Avaliable Resturent',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w700,
                                      color: Color(0xff64CCC5)),
                                ),
                              )),
                      ),
                      const Padding(
                        padding: const EdgeInsets.only(top: 16, left: 16),
                        child: Text(
                          'Hotel',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff176B87)),
                        ),
                      ),
                      SizedBox(
                        height: 200,
                        child: Obx(() => controller.hotelList.isNotEmpty
                            ? Row(children: [
                                Expanded(
                                    child: ListView.builder(
                                        scrollDirection: Axis.horizontal,
                                        itemCount: 1,
                                        itemBuilder: (context, index) => Obx(
                                              () => Row(
                                                  children: controller.hotelList
                                                      .map(
                                                        (e) => Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                  .only(
                                                                  left: 16.0,
                                                                  top: 8),
                                                          child: SizedBox(
                                                            height: 180,
                                                            width: 200,
                                                            child: Card(
                                                              clipBehavior: Clip
                                                                  .antiAlias,
                                                              color: Color(
                                                                  0xffDAFFFB),
                                                              child: Stack(
                                                                  children: [
                                                                    Padding(
                                                                      padding: EdgeInsets.only(
                                                                          left:
                                                                              8,
                                                                          right:
                                                                              8,
                                                                          bottom:
                                                                              8,
                                                                          top:
                                                                              16),
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
                                                                            controller.getImage(e.photo2.toString()),
                                                                            width:
                                                                                180,
                                                                            fit:
                                                                                BoxFit.cover,
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                    Positioned(
                                                                        top:
                                                                            133,
                                                                        left:
                                                                            16,
                                                                        child:
                                                                            Text(
                                                                          e.hotelNameEn
                                                                              .toString(),
                                                                          style: TextStyle(
                                                                              fontSize: 20,
                                                                              color: Color(0xff001C30),
                                                                              fontFamily: "K2D"),
                                                                        )),
                                                                    Positioned(
                                                                      top: 153,
                                                                      left: 110,
                                                                      child: Row(
                                                                          children: [
                                                                            Text(
                                                                              e.price.toString(),
                                                                              style: const TextStyle(fontSize: 15, color: Color.fromARGB(255, 45, 212, 106), fontFamily: "K2D"),
                                                                            ),
                                                                            SizedBox(
                                                                              width: 3,
                                                                            ),
                                                                            Icon(
                                                                              Icons.monetization_on,
                                                                              color: Color.fromARGB(255, 45, 212, 106),
                                                                              size: 18,
                                                                            )
                                                                          ]),
                                                                    )
                                                                  ]),
                                                            ),
                                                          ),
                                                        ),
                                                      )
                                                      .toList()),
                                            ))),
                              ])
                            : const Center(
                                child: Text(
                                  'No Avaliable Hotel',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w700,
                                      color: Color(0xff64CCC5)),
                                ),
                              )),
                      ),
                      const Padding(
                        padding: const EdgeInsets.only(top: 16, left: 16),
                        child: Text(
                          'TripSchadual',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff176B87)),
                        ),
                      ),
                      SizedBox(
                        height: 200,
                        child: Obx(() => controller.scadualList.isNotEmpty
                            ? Row(
                                children: [
                                  Expanded(
                                      child: ListView.builder(
                                          scrollDirection: Axis.horizontal,
                                          itemCount: 1,
                                          itemBuilder: (context, index) => Obx(
                                                () => Row(
                                                    children:
                                                        controller.scadualList
                                                            .map(
                                                              (e) => Padding(
                                                                padding:
                                                                    const EdgeInsets
                                                                        .only(
                                                                        left:
                                                                            16.0,
                                                                        top: 8),
                                                                child: SizedBox(
                                                                  height: 180,
                                                                  width: 200,
                                                                  child: Card(
                                                                    clipBehavior:
                                                                        Clip.antiAlias,
                                                                    color: Color(
                                                                        0xffDAFFFB),
                                                                    child: Stack(
                                                                        children: [
                                                                          Padding(
                                                                            padding: EdgeInsets.only(
                                                                                left: 8,
                                                                                right: 8,
                                                                                bottom: 8,
                                                                                top: 16),
                                                                            child:
                                                                                Card(
                                                                              clipBehavior: Clip.antiAlias,
                                                                              child: Container(
                                                                                height: 110,
                                                                                child: Image.network(
                                                                                  controller.getImage(e.fristDayPhoto2.toString()),
                                                                                  width: 180,
                                                                                  fit: BoxFit.cover,
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          ),
                                                                          Positioned(
                                                                              top: 133,
                                                                              left: 16,
                                                                              child: Text(
                                                                                e.destinationEn.toString(),
                                                                                style: TextStyle(fontSize: 20, color: Color(0xff001C30), fontFamily: "K2D"),
                                                                              )),
                                                                          Positioned(
                                                                            top:
                                                                                153,
                                                                            left:
                                                                                110,
                                                                            child:
                                                                                Row(children: [
                                                                              Text(
                                                                                e.totalprice.toString(),
                                                                                style: TextStyle(fontSize: 15, color: Color.fromARGB(255, 45, 212, 106), fontFamily: "K2D"),
                                                                              ),
                                                                              SizedBox(
                                                                                width: 3,
                                                                              ),
                                                                              Icon(
                                                                                Icons.monetization_on,
                                                                                color: Color.fromARGB(255, 45, 212, 106),
                                                                                size: 18,
                                                                              )
                                                                            ]),
                                                                          )
                                                                        ]),
                                                                  ),
                                                                ),
                                                              ),
                                                            )
                                                            .toList()),
                                              ))),
                                ],
                              )
                            : const Center(
                                child: Text(
                                  'No Avaliable Scadual',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w700,
                                      color: Color(0xff64CCC5)),
                                ),
                              )),
                      )
                    ]))
              : const Center(
                  child: Text(
                    'No result',
                    style: TextStyle(
                        fontSize: 25,
                        color: Color(0xff001C30),
                        fontWeight: FontWeight.w500),
                  ),
                ),
        ));
  }
}
