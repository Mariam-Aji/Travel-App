import 'package:dartz/dartz.dart';
import 'package:get/get.dart';
import 'package:travel_app/core/server/helper_api.dart';
import 'package:travel_app/core/server/parse_response.dart';
import 'package:travel_app/core/server/server_config.dart';
import 'package:travel_app/models/hotel.dart';

class HotelChoiceController extends GetxController {
  late final List<Hotel> hotels = [];
  late int tripId;
  @override
  void onInit() {
    tripId = Get.arguments;
    getAllHotels();
    super.onInit();
  }

  RxBool isLoading = false.obs;
  getAllHotels() async {
    isLoading.value = true;
    Either<ErrorResponse, Map<String, dynamic>> response;

    response = await ApiHelper.makeRequest(
      targetRout: '${ServerConstApis.getSpecificHotels}/${tripId}',
      method: "Post",
      // token: token,
    );

    dynamic handlingResponse = response.fold((l) => l, (r) => r);
    if (handlingResponse is ErrorResponse) {
      isLoading.value = false;
    } else {
      isLoading.value = false;
      List<dynamic> categoryListJson =
          handlingResponse["Available Hotels in a similar destination:"];
      hotels.addAll(categoryListJson
          .map((jsonItem) => Hotel.fromJson(jsonItem))
          .toList());

      update();
    }
  }
}
