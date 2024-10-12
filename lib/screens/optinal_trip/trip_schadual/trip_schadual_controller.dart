import 'package:dartz/dartz.dart';
import 'package:get/get.dart';
import 'package:travel_app/core/server/helper_api.dart';
import 'package:travel_app/core/server/parse_response.dart';
import 'package:travel_app/core/server/server_config.dart';
import 'package:travel_app/models/trip_schoul.dart';

class TripSchadualController extends GetxController {
  late TripSchadual tripSchadual;
  late int tripId;
  RxBool tripScadualEmpty = false.obs;
  @override
  void onInit() {
    tripId = Get.arguments;
    // tripSchadual = TripSchadual.fromJson(tripEx);
    getTripSchadual();
    super.onInit();
  }

  int selectedDay = 0;
  RxBool isLoading = false.obs;
  getTripSchadual() async {
    isLoading.value = true;
    Either<ErrorResponse, Map<String, dynamic>> response;

    response = await ApiHelper.makeRequest(
      targetRout: '${ServerConstApis.displaySchadualsForOptional}/$tripId',
      method: "post",
      // token: token,
    );

    dynamic handlingResponse = response.fold((l) => l, (r) => r);
    if (handlingResponse is ErrorResponse) {
      isLoading.value = false;
    } else {
      if (handlingResponse['Available trip schadual in similar information:'] ==
          null) {
        tripSchadual = TripSchadual.fromJson({});
        tripScadualEmpty.value = true;
      } else {
        tripSchadual = TripSchadual.fromJson(
            handlingResponse['Available trip schadual in similar information:']
                [0]);
      }
      isLoading.value = false;
      update();
    }
  }
}
