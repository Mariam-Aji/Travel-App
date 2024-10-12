import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:travel_app/core/images/network_image.dart';
import 'package:travel_app/models/muenus.dart';
import 'package:travel_app/screens/meals/tickets/tickets_controller.dart';

class MealSelection extends StatefulWidget {
  const MealSelection({super.key, required this.menuList});
  final List<Menu> menuList;
  @override
  State<MealSelection> createState() => _MealSelectionState();
}

class _MealSelectionState extends State<MealSelection> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20),
            ...List.generate(widget.menuList.length, (index) {
              final singleMenu = widget.menuList[index];
              return MealCard(
                resturantId: singleMenu.hotelId,
                mealName: singleMenu.typeEn,
                dishes: [
                  singleMenu.fDishEn,
                  singleMenu.sDishEn,
                  singleMenu.tDishEn,
                  singleMenu.foDishEn
                ],
                drink: singleMenu.drinksEn,
                prices: [
                  singleMenu.fPrice,
                  singleMenu.sPrice,
                  singleMenu.tPrice,
                  singleMenu.foPrice
                ],
                drinkPrice: 0.0,
                images: [
                  singleMenu.fPhoto,
                  singleMenu.sPhoto,
                  singleMenu.tPhoto,
                  singleMenu.foPhoto,
                  'assets/tee.png'
                ],
              );
            })
          ],
        ),
      ),
    );
  }
}

class MealCard extends StatelessWidget {
  final String mealName;
  final List<String> dishes;
  final String drink;
  final List<double> prices;
  final double drinkPrice;
  final List<String> images;
  final int resturantId;

  const MealCard({
    required this.mealName,
    required this.dishes,
    required this.drink,
    required this.prices,
    required this.drinkPrice,
    required this.images,
    required this.resturantId,
  });

  double get totalPrice => prices.reduce((a, b) => a + b) + drinkPrice;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 10),
      color: const Color(0xffDAFFFB),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              mealName,
              style: const TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Color(0xff176B87),
                fontFamily: "K2D",
              ),
            ),
            const SizedBox(height: 10),
            ...List.generate(dishes.length, (index) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        ClipRRect(
                            borderRadius: BorderRadius.circular(
                                30), // لجعل الصورة بيضوية أكثر أو أقل
                            child: getImageNetwork(
                                url: images[index], width: 100, height: 60)),
                        SizedBox(width: 10),
                        Text(
                          dishes[index],
                          style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff176B87),
                            fontFamily: "K2D",
                          ),
                        ),
                      ],
                    ),
                    Text(
                      '\$${prices[index].toStringAsFixed(2)}',
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff176B87),
                        fontFamily: "K2D",
                      ),
                    ),
                  ],
                ),
              );
            }),
            //const Divider(),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(30),
                        child: Image.asset(
                          images.last,
                          width: 100,
                          height: 60, // تعديل الأبعاد لجعل الشكل بيضوي
                          fit: BoxFit.cover,
                        ),
                      ),
                      const SizedBox(width: 10),
                      Text(
                        drink,
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff176B87),
                          fontFamily: "K2D",
                        ),
                      ),
                    ],
                  ),
                  Text(
                    '\$${drinkPrice.toStringAsFixed(2)}',
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff176B87),
                      fontFamily: "K2D",
                    ),
                  ),
                ],
              ),
            ),
            const Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Total Price:',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff176B87),
                    fontFamily: "K2D",
                  ),
                ),
                Text(
                  '\$${totalPrice.toStringAsFixed(2)}',
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff176B87),
                    fontFamily: "K2D",
                  ),
                ),
              ],
            ),
            const SizedBox(height: 5),
            Align(
              alignment: Alignment.center,
              child: ElevatedButton(
                onPressed: () {
                  final TicketsController controller = Get.find();
                  controller.choiceDish(resturantId);
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xff001c30), // لون الزر
                  minimumSize: Size(120,
                      50), // الحجم الأدنى للزر (يمكنك تعديل الأبعاد حسب الحاجة)
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15), // يجعل الزر مربعًا
                  ),
                  textStyle: const TextStyle(
                    fontSize: 25, // حجم الخط
                    fontWeight: FontWeight.bold,
                  ),
                ),
                child: const Text(
                  'Book Food',
                  style: TextStyle(
                    fontFamily: "K2D",
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
