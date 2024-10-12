import 'dart:convert';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:travel_app/models/consttrip_model.dart';

class ConsttripController extends GetxController {
  ConsttripController(
      {required this.contientid,
      required this.seasonid,
      required this.sectionid,
      required this.typeid});
  final String contientid;
  final String seasonid;
  final String sectionid;
  final String typeid;
  var consttripList = RxList<ConsttripModel>();

  @override
  void onInit() {
    super.onInit();
    getTrip();
  }

  Future<RxList<ConsttripModel>> getTrip() async {
    final response = await http.post(
        Uri.parse(
            'http://192.168.137.1:8000/api/DisplayTripsDependonFORConstTrip/$contientid/$seasonid/$sectionid/$typeid'),
        headers: {
          'Accept': 'application/json',
          //'ngrok-skip-browser-warning': '33932',
        },
        body: <String, String>{
          'lang': 'en'
        });
    var data = jsonDecode(response.body.toString());
    print(response.statusCode);
    print('con{$contientid}');
    print('sea{$seasonid}');
    print('sec{$sectionid}');
    print('type{$typeid}');
    if (response.statusCode == 201) {
      for (Map<String, dynamic> index in data) {
        consttripList.add(ConsttripModel.fromJson(index));
      }
      return consttripList;
    } else {
      return consttripList;
    }
  }

  String getImage(String imageUrl) {
    String response = 'http://192.168.137.1:8000/$imageUrl';

    return response;
  }
}
