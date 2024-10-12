final tripEx = {
  "id": 1,
  "destination": "paris",
  "fly_date": "2030-01-12",
  "fly_time": "2:00 PM",
  "time1": "ds",
  "firstDayPlace1": null,
  "frist_DAY_PHOTO1": null,
  "time2": null,
  "firstDayPlace2": null,
  "frist_DAY_PHOTO2": null,
  "time3": null,
  "firstDayPlace3": null,
  "frist_DAY_PHOTO3": null,
  "priceFor1Day": null,
  "time4": null,
  "secondDayPlace1": null,
  "second_DAY_PHOTO1": null,
  "time5": null,
  "secondDayPlace2": null,
  "second_DAY_PHOTO2": null,
  "time6": null,
  "secondDayPlace3": null,
  "second_DAY_PHOTO3": null,
  "priceFor2Day": null,
  "time7": null,
  "ThirdDayPlace1": null,
  "Third_DAY_PHOTO1": null,
  "time8": null,
  "ThirdDayPlace2": null,
  "Third_DAY_PHOTO2": null,
  "time9": null,
  "ThirdDayPlace3": null,
  "Third_DAY_PHOTO3": null,
  "priceFor3Day": null,
  "time10": null,
  "FourthDayPlace1": null,
  "Fourth_DAY_PHOTO1": null,
  "time11": null,
  "FourthDayPlace2": null,
  "Fourth_DAY_PHOTO2": null,
  "time12": null,
  "FourthDayPlace3": null,
  "Fourth_DAY_PHOTO3": null,
  "priceFor4Day": null,
  "time13": null,
  "FifthDayPlace1": null,
  "Fifth_DAY_PHOTO1": null,
  "time14": null,
  "FifthDayPlace2": null,
  "Fifth_DAY_PHOTO2": null,
  "time15": null,
  "FifthDayPlace3": null,
  "Fifth_DAY_PHOTO3": null,
  "priceFor5Day": null,
  "Totalprice": 0,
  "created_at": null,
  "updated_at": null
};

class TripSchadual {
  final int id;

  final String? destination;
  final String? fly_date;
  final String? fly_time;
  final String? time1;
  final String? firstDayPlace1;
  final String? frist_DAY_PHOTO1;
  final String? time2;
  final String? firstDayPlace2;
  final String? frist_DAY_PHOTO2;
  final String? time3;
  final String? firstDayPlace3;
  final String? frist_DAY_PHOTO3;
  final int? priceFor1Day;
  final String? time4;
  final String? secondDayPlace1;
  final String? second_DAY_PHOTO1;
  final String? time5;
  final String? secondDayPlace2;
  final String? second_DAY_PHOTO2;
  final String? time6;
  final String? secondDayPlace3;
  final String? second_DAY_PHOTO3;
  final int? priceFor2Day;
  final String? time7;
  final String? ThirdDayPlace1;
  final String? Third_DAY_PHOTO1;
  final String? time8;
  final String? ThirdDayPlace2;
  final String? Third_DAY_PHOTO2;
  final String? time9;
  final String? ThirdDayPlace3;
  final String? Third_DAY_PHOTO3;
  final int? priceFor3Day;
  final String? time10;
  final String? FourthDayPlace1;
  final String? Fourth_DAY_PHOTO1;
  final String? time11;
  final String? FourthDayPlace2;
  final String? Fourth_DAY_PHOTO2;
  final String? time12;
  final String? FourthDayPlace3;
  final String? Fourth_DAY_PHOTO3;
  final int? priceFor4Day;
  final String? time13;
  final String? FifthDayPlace1;
  final String? Fifth_DAY_PHOTO1;
  final String? time14;
  final String? FifthDayPlace2;
  final String? Fifth_DAY_PHOTO2;
  final String? time15;
  final String? FifthDayPlace3;
  final String? Fifth_DAY_PHOTO3;
  final int? priceFor5Day;
  final int? Totalprice;
  final String? created_at;
  final String? updated_at;

  TripSchadual(
      {required this.id,
      required this.destination,
      required this.fly_date,
      required this.fly_time,
      required this.time1,
      required this.firstDayPlace1,
      required this.frist_DAY_PHOTO1,
      required this.time2,
      required this.firstDayPlace2,
      required this.frist_DAY_PHOTO2,
      required this.time3,
      required this.firstDayPlace3,
      required this.frist_DAY_PHOTO3,
      required this.priceFor1Day,
      required this.time4,
      required this.secondDayPlace1,
      required this.second_DAY_PHOTO1,
      required this.time5,
      required this.secondDayPlace2,
      required this.second_DAY_PHOTO2,
      required this.time6,
      required this.secondDayPlace3,
      required this.second_DAY_PHOTO3,
      required this.priceFor2Day,
      required this.time7,
      required this.ThirdDayPlace1,
      required this.Third_DAY_PHOTO1,
      required this.time8,
      required this.ThirdDayPlace2,
      required this.Third_DAY_PHOTO2,
      required this.time9,
      required this.ThirdDayPlace3,
      required this.Third_DAY_PHOTO3,
      required this.priceFor3Day,
      required this.time10,
      required this.FourthDayPlace1,
      required this.Fourth_DAY_PHOTO1,
      required this.time11,
      required this.FourthDayPlace2,
      required this.Fourth_DAY_PHOTO2,
      required this.time12,
      required this.FourthDayPlace3,
      required this.Fourth_DAY_PHOTO3,
      required this.priceFor4Day,
      required this.time13,
      required this.FifthDayPlace1,
      required this.Fifth_DAY_PHOTO1,
      required this.time14,
      required this.FifthDayPlace2,
      required this.Fifth_DAY_PHOTO2,
      required this.time15,
      required this.FifthDayPlace3,
      required this.Fifth_DAY_PHOTO3,
      required this.priceFor5Day,
      required this.Totalprice,
      required this.created_at,
      required this.updated_at});
  factory TripSchadual.fromJson(Map<String, dynamic> json) {
    return TripSchadual(
        id: json['id'] ?? 0,
        destination: json["destination"] ?? '',
        fly_date: json['fly_date'] ?? '',
        fly_time: json['fly_time'] ?? '',
        time1: json['time1'] ?? '',
        firstDayPlace1: json['firstDayPlace1'] ?? '',
        frist_DAY_PHOTO1: json['frist_DAY_PHOTO1'] ?? '',
        time2: json['time2'] ?? '',
        firstDayPlace2: json['firstDayPlace2'] ?? '',
        frist_DAY_PHOTO2: json['frist_DAY_PHOTO2'] ?? '',
        time3: json['time3'] ?? '',
        firstDayPlace3: json['firstDayPlace3'] ?? '',
        frist_DAY_PHOTO3: json['frist_DAY_PHOTO3'] ?? '',
        priceFor1Day: int.parse(json['priceFor1Day'] ?? '0'),
        time4: json['time4'] ?? '',
        secondDayPlace1: json['secondDayPlace1'] ?? '',
        second_DAY_PHOTO1: json['second_DAY_PHOTO1'] ?? '',
        time5: json['time5'] ?? '',
        secondDayPlace2: json['secondDayPlace2'] ?? '',
        second_DAY_PHOTO2: json['second_DAY_PHOTO2'] ?? '',
        time6: json['time6'] ?? '',
        secondDayPlace3: json['secondDayPlace3'] ?? '',
        second_DAY_PHOTO3: json['second_DAY_PHOTO3'] ?? '',
        priceFor2Day: int.parse(json['priceFor2Day'] ?? '0'),
        time7: json['time7'] ?? '',
        ThirdDayPlace1: json['ThirdDayPlace1'] ?? '',
        Third_DAY_PHOTO1: json['Third_DAY_PHOTO1'] ?? '',
        time8: json['time8'] ?? '',
        ThirdDayPlace2: json['ThirdDayPlace2'] ?? '',
        Third_DAY_PHOTO2: json['Third_DAY_PHOTO2'] ?? '',
        time9: json['time9'] ?? '',
        ThirdDayPlace3: json['ThirdDayPlace3'] ?? '',
        Third_DAY_PHOTO3: json['Third_DAY_PHOTO3'] ?? '',
        priceFor3Day: int.parse(json['priceFor3Day'] ?? '0'),
        time10: json['time10'] ?? '',
        FourthDayPlace1: json['FourthDayPlace1'] ?? '',
        Fourth_DAY_PHOTO1: json['Fourth_DAY_PHOTO1'] ?? '',
        time11: json['time11'] ?? '',
        FourthDayPlace2: json['FourthDayPlace2'] ?? '',
        Fourth_DAY_PHOTO2: json['Fourth_DAY_PHOTO2'] ?? '',
        time12: json['time12'] ?? '',
        FourthDayPlace3: json['FourthDayPlace3'] ?? '',
        Fourth_DAY_PHOTO3: json['Fourth_DAY_PHOTO3'] ?? '',
        priceFor4Day: int.parse(json['priceFor4Day'] ?? '0'),
        time13: json['time13'] ?? '',
        FifthDayPlace1: json['FifthDayPlace1'] ?? '',
        Fifth_DAY_PHOTO1: json['Fifth_DAY_PHOTO1'] ?? '',
        time14: json['time14'] ?? '',
        FifthDayPlace2: json['FifthDayPlace2'] ?? '',
        Fifth_DAY_PHOTO2: json['Fifth_DAY_PHOTO2'] ?? '',
        time15: json['time15'] ?? '',
        FifthDayPlace3: json['FifthDayPlace3'] ?? '',
        Fifth_DAY_PHOTO3: json['Fifth_DAY_PHOTO3'] ?? '',
        priceFor5Day: int.parse(json['priceFor5Day'] ?? '0'),
        Totalprice: json['Totalprice'] ?? 0,
        created_at: json['created_at'] ?? '',
        updated_at: json['updated_at'] ?? '');
  }
}
