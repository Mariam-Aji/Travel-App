import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:travel_app/controller/sections_controller.dart';
import 'package:travel_app/models/section.dart';
import 'package:travel_app/ticket_page.dart';

class TypeTravelPage extends StatelessWidget {
  TypeTravelPage({super.key, required this.contientid, required this.seasonid});
  final String contientid;
  final String seasonid;

  @override
  Widget build(BuildContext context) {
    List<Section> m = Section.l;

    SectionsController sectionsController = Get.put(SectionsController());
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
              child: Text("Journey Type ",
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
                Padding(padding: EdgeInsets.all(20)),
                Padding(
                  padding: const EdgeInsets.only(left: 16, right: 16),
                  child: Container(
                    height: 100,
                    child: const Card(
                      color: Color(0xffDAFFFB),
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 20, right: 20),
                          child: Text(
                            "What type do you prefer for your journey ?",
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
               const SizedBox(
                  height: 20,
                ),
                Obx(() => sectionsController.sectionsList.isEmpty
                    ? const Center(
                        child:  CircularProgressIndicator(
                          color: Color(0xff001c30),
                        ),
                      )
                    : Container(
                        height: 500,
                        child: GridView.builder(
                          padding: EdgeInsets.only(left: 16, right: 16),
                          gridDelegate:
                            const  SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 2,
                                  crossAxisSpacing: 10,
                                  mainAxisSpacing: 15),
                          itemCount: sectionsController.sectionsList.length,
                          itemBuilder: (context, index) => Container(
                            height: 200,
                            child: InkWell(
                              onTap: () {
                                Get.to(TicketPage(contientid: contientid,seasonid: seasonid,sectionid:sectionsController.sectionsList[index].id.toString()));
                              },
                              child: Card(
                                clipBehavior: Clip.antiAlias,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20)),
                                child: Stack(
                                  alignment: Alignment.bottomRight,
                                  children: [
                                    Container(
                                        width: 200,
                                        height: 200,
                                        child: Image.asset(
                                          m[index].image.toString(),
                                          fit: BoxFit.cover,
                                        )),
                                    Padding(
                                      padding: EdgeInsets.only(left: 8),
                                      child: Text(
                                        sectionsController
                                            .sectionsList[index].sectionName
                                            .toString(),
                                        style: TextStyle(
                                            color: Color(0xff64CCC5),
                                            fontSize: 23,
                                            fontFamily: "Pacifico"),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ))
              ],
            ),
          )
        ],
      ),
    );
  }
}
