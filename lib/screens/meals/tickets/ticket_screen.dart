import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:travel_app/screens/meals/tickets/tickets_controller.dart';
import 'package:travel_app/screens/meals/tickets/mealSelection_screen.dart';

class TicketsScreen extends StatelessWidget {
  final TicketsController controller = Get.put(TicketsController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff64ccc5),
        title: const Text(
          'Tickets',
          style: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.bold,
            color: Colors.white,
            fontFamily: "Pacifico",
          ),
        ),
        centerTitle: true,
      ),
      body: Obx(() {
        if (controller.isLoadingPage.value) {
          return const Center(child: CircularProgressIndicator());
        }
        return SingleChildScrollView(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Column(
            children: [
              SizedBox(
                height: 100,
                child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: controller.reservationsList.length,
                  itemBuilder: (context, index) {
                    print(index);
                    final reservation = controller.reservationsList[index];
                    return GestureDetector(
                      onTap: () {
                        controller.getChoicenReservation(
                            reservation.reservation.id, reservation.type);
                      },
                      child: Container(
                        margin: const EdgeInsets.symmetric(horizontal: 5),
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.black, width: 5),
                            borderRadius: BorderRadius.circular(30)),
                        padding: const EdgeInsets.symmetric(
                            vertical: 10, horizontal: 25),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(reservation.reservation.destination),
                            Text(reservation.type),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
              controller.isLoadingGetMenu.value
                  ? const CircularProgressIndicator()
                  : MealSelection(
                      menuList: controller.munueList,
                    )
            ],
          ),
        );
      }),
    );
  }
}
