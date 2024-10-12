import 'package:dartz/dartz.dart';
import 'package:get/get.dart';
import 'package:travel_app/core/server/helper_api.dart';
import 'package:travel_app/core/server/parse_response.dart';
import 'package:travel_app/core/server/server_config.dart';
import 'package:travel_app/core/widgets/snackbar_manager.dart';
import 'package:travel_app/models/chocien_reservation.dart';
import 'package:travel_app/models/muenus.dart';
import 'package:travel_app/models/reservation_for_meal_model.dart';

class TicketsController extends GetxController {
  RxList<ReservationForMealModel> reservationsList =
      <ReservationForMealModel>[].obs;
  RxList<Menu> munueList = <Menu>[].obs;
  late int userId;
  RxBool isLoadingPage = false.obs;
  RxBool isLoadingGetMenu = false.obs;
  RxInt selectedReservationIndex = 0.obs;
  int reservationId = 0;
  @override
  void onInit() {
    userId = Get.arguments ?? 1;
    getReservations();

    super.onInit();
  }

  getReservations() async {
    isLoadingPage.value = true;
    Either<ErrorResponse, Map<String, dynamic>> response;

    response = await ApiHelper.makeRequest(
      targetRout: '${ServerConstApis.GetavailableReservation}/${userId}',
      method: "post",
      // token: token,
    );

    dynamic handlingResponse = response.fold((l) => l, (r) => r);
    if (handlingResponse is ErrorResponse) {
    } else {
      // handlingResponse = testReservation;
      List<dynamic> categoryListJson = handlingResponse['reservations'];
      reservationsList.addAll(categoryListJson
          .map((jsonItem) => ReservationForMealModel.fromJson(jsonItem))
          .toList());

      update();
    }
    isLoadingPage.value = false;
  }

  getChoicenReservation(int reservationId, String type) async {
    isLoadingGetMenu.value = true;
    munueList.clear();
    reservationId = reservationId;
    Either<ErrorResponse, Map<String, dynamic>> response;

    response = await ApiHelper.makeRequest(
      targetRout: '${ServerConstApis.chosereservation}/${reservationId}/$type',
      method: "post",
      // token: token,
    );

    dynamic handlingResponse = response.fold((l) => l, (r) => r);
    if (handlingResponse is ErrorResponse) {
    } else {
      if (type == 'Const') {
        final ChocienConstReservation chocienConstReservation =
            ChocienConstReservation.fromJson(handlingResponse);
        GetRestaurantrelatedToReservedHotel(chocienConstReservation.id, type);
      } else {
        final ChocienOptinalReservation chocienOptinalReservation =
            ChocienOptinalReservation.fromJson(handlingResponse);
        GetRestaurantrelatedToReservedHotel(chocienOptinalReservation.id, type);
      }

      update();
    }
  }

  GetRestaurantrelatedToReservedHotel(int reservationId, String type) async {
    Either<ErrorResponse, Map<String, dynamic>> response;

    response = await ApiHelper.makeRequest(
      targetRout:
          '${ServerConstApis.GetRestaurantrelatedToReservedHotel}/${userId}/$reservationId/$type',
      method: "post",
      // token: token,
    );

    dynamic handlingResponse = response.fold((l) => l, (r) => r);
    if (handlingResponse is ErrorResponse) {
    } else {
      List<dynamic> categoryListJson = handlingResponse['restaurants'];
      munueList.addAll(
          categoryListJson.map((jsonItem) => Menu.fromJson(jsonItem)).toList());
      update();
    }
    isLoadingGetMenu.value = false;
  }

  choiceDish(int restaurantId) async {
    Either<ErrorResponse, Map<String, dynamic>> response;

    response = await ApiHelper.makeRequest(
      targetRout: '${ServerConstApis.choseDish}/$restaurantId/$userId',
      method: "post",
      // token: token,
    );

    dynamic handlingResponse = response.fold((l) => l, (r) => r);
    if (handlingResponse is ErrorResponse) {
    } else {
      SnackbarManager.showSnackbar("Booked succfully");
    }
  }
}
