import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:travel_app/controller/seasons_controller.dart';
import 'package:travel_app/models/season.dart';

import 'package:travel_app/type_travel_page.dart';

class CategoriesPage extends StatelessWidget {
  CategoriesPage({super.key, required this.contientid});
  final String contientid;
  @override
  Widget build(BuildContext context) {
    SeasonsController seasonsController = Get.put(SeasonsController());
    List<Season> m = Season.l;
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
              child: Text("Categories",
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
               const Padding(padding: EdgeInsets.all(20)),
                Padding(
                  padding: const EdgeInsets.only(left: 16, right: 16),
                  child: Container(
                    height: 100,
                    child:const  Card(
                      color: Color(0xffDAFFFB),
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 20, right: 20),
                          child: Text(
                            "Choose the season which you want to travel in ..",
                            style: TextStyle(
                                color: Color(0xff001C30),
                                fontFamily: "K2D",
                                fontSize: 20),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Obx(() => seasonsController.seasonsList.isEmpty
                    ? const Center(
                        child: const CircularProgressIndicator(
                          color: Color(0xff001c30),
                        ),
                      )
                    : Container(
                        height: 500,
                        child: ListView.builder(
                            itemCount: seasonsController.seasonsList.length,
                            scrollDirection: Axis.vertical,
                            itemBuilder: (context, index) => Container(
                                  height: 150,
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        left: 16.0,
                                        right: 16,
                                        top: 8,
                                        bottom: 8),
                                    child: InkWell(
                                      onTap: () {
                                        Get.to(
                                          TypeTravelPage(contientid:contientid,seasonid:seasonsController.seasonsList[index].id.toString() ),
                                        );
                                      },
                                      child: Card(
                                        clipBehavior: Clip.antiAlias,
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(20)),
                                        child: Stack(
                                          alignment: Alignment.center,
                                          children: [
                                            Container(
                                                width: 400,
                                                height: 200,
                                                child: Image.asset(
                                                  m[index].image.toString(),
                                                  fit: BoxFit.cover,
                                                )),
                                            Text(
                                              seasonsController
                                                  .seasonsList[index].seasonName
                                                  .toString(),
                                              style:const TextStyle(
                                                  color: Color(0xffDAFFFB),
                                                  fontSize: 28,
                                                  fontFamily: "Pacifico"),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ))))
              ],
            ),
          )
        ],
      ),
    );
  }
}
