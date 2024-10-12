import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:travel_app/models/search_model.dart';

class SeController extends GetxController {
  
  var searchList = RxList<OptionaltripSearchModel>();
  var constList = RxList<ConstSearch>();
  var ticketList = RxList<TicketSearch>();
  var resturantList=RxList<ResturentSearch>();
  var hotelList=RxList<HotelSearch>();
  var scadualList=RxList<SchadualSearch>();
  final seController = TextEditingController().obs;
  
  RxBool loading = false.obs;
  Future<RxList<OptionaltripSearchModel>> getTrip() async {
    searchList = RxList.empty();
    final response = await http.post(
        Uri.parse('http://192.168.137.1:8000/api/search'),
        headers: {'Accept': 'application/json',
        //'ngrok-skip-browser-warning': '37132'
        },
        body: <String, String>{'query': seController.value.text});
    var data = jsonDecode(response.body.toString());
    print(response.statusCode);

    if (response.statusCode == 200) {
      var optional = data['results']['optionaljourny'];
      if (optional != null) {
        for (Map<String, dynamic> index in optional) {
          searchList.add(OptionaltripSearchModel.fromJson(index));
        }
        loading.value = true;
        return searchList;
      } else {
        loading.value = true;
        return searchList;
      }
    } else {
      loading.value = false;
      return searchList;
    }
  }

  String getImage(String imageUrl) {
    String response = 'http://192.168.137.1:8000/$imageUrl';

    return response;
  }

  Future<RxList<ConstSearch>> getconstTrip() async {
    constList = RxList.empty();
    final response = await http.post(
        Uri.parse('http://192.168.137.1:8000/api/search'),
        headers: {'Accept': 'application/json',
        //'ngrok-skip-browser-warning': '33982'
        },
        body: <String, String>{'query': seController.value.text});
    var data = jsonDecode(response.body.toString());
    print(response.statusCode);

    if (response.statusCode == 200) {
      var Const = data['results']['const_trip'];
      if (Const != null) {
        for (Map<String, dynamic> index in Const) {
          constList.add(ConstSearch.fromJson(index));
        }
      //  trip.value = true;
        return constList;
      } else {
       // trip.value = true;
        return constList;
      }
    } else {
    //  trip.value = false;
      return constList;
    }
  }
  
  Future<RxList<TicketSearch>> getTicket() async {
    ticketList = RxList.empty();
    final response = await http.post(
        Uri.parse('http://192.168.137.1:8000/api/search'),
        headers: {'Accept': 'application/json',
        //'ngrok-skip-browser-warning': '33932'
        },
        body: <String, String>{'query': seController.value.text});
    var data = jsonDecode(response.body.toString());
    print(response.statusCode);

    if (response.statusCode == 200) {
      var ticket = data['results']['ticket'];
      if (ticket != null) {
        for (Map<String, dynamic> index in ticket) {
          ticketList.add(TicketSearch.fromJson(index));
        }
      //  trip.value = true;
        return ticketList;
      } else {
       // trip.value = true;
        return ticketList;
      }
    } else {
    //  trip.value = false;
      return ticketList;
    }
  }
  
  Future<RxList<ResturentSearch>> getResturant() async {
    resturantList = RxList.empty();
    final response = await http.post(
        Uri.parse('http://192.168.137.1:8000/api/search'),
        headers: {'Accept': 'application/json',
        //'ngrok-skip-browser-warning': '33932'
        },
        body: <String, String>{'query': seController.value.text});
    var data = jsonDecode(response.body.toString());
    print(response.statusCode);

    if (response.statusCode == 200) {
      var rest = data['results']['restaurant'];
      if (rest != null) {
        for (Map<String, dynamic> index in rest) {
          resturantList.add(ResturentSearch.fromJson(index));
        }
      //  trip.value = true;
        return resturantList;
      } else {
       // trip.value = true;
        return resturantList;
      }
    } else {
    //  trip.value = false;
      return resturantList;
    }
  }
  
  Future<RxList<HotelSearch>> getHotel() async {
    hotelList = RxList.empty();
    final response = await http.post(
        Uri.parse('http://192.168.137.1:8000/api/search'),
        headers: {'Accept': 'application/json',
       // 'ngrok-skip-browser-warning': '33032'
        },
        body: <String, String>{'query': seController.value.text});
    var data = jsonDecode(response.body.toString());
    print(response.statusCode);

    if (response.statusCode == 200) {
      var hotel = data['results']['hotel'];
      if (hotel != null) {
        for (Map<String, dynamic> index in hotel) {
          hotelList.add(HotelSearch.fromJson(index));
        }
      //  trip.value = true;
        return hotelList;
      } else {
       // trip.value = true;
        return hotelList;
      }
    } else {
    //  trip.value = false;
      return hotelList;
    }
  }
  
  Future<RxList<SchadualSearch>> getScadual() async {
    scadualList = RxList.empty();
    final response = await http.post(
        Uri.parse('http://192.168.137.1:8000/api/search'),
        headers: {'Accept': 'application/json',
        //'ngrok-skip-browser-warning': '33932'
        },
        body: <String, String>{'query': seController.value.text});
    var data = jsonDecode(response.body.toString());
    print(response.statusCode);

    if (response.statusCode == 200) {
      var scadual = data['results']['trip_schadual'];
      if (scadual != null) {
        for (Map<String, dynamic> index in scadual) {
          scadualList.add(SchadualSearch.fromJson(index));
        }
      //  trip.value = true;
        return scadualList;
      } else {
       // trip.value = true;
        return scadualList;
      }
    } else {
    //  trip.value = false;
      return scadualList;
    }
  }
  
}
