import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:travel_app/screens/const_trip/activity_screen.dart';
import 'package:travel_app/screens/const_trip/hotel_screen.dart';
import 'package:travel_app/screens/const_trip/second_screen.dart';
import 'package:travel_app/screens/meals/tickets/ticket_screen.dart';
import 'package:travel_app/screens/optinal_trip/hotel_choice/hotel_choises.dart';
import 'package:travel_app/screens/optinal_trip/introduction/introduction_screen.dart';
import 'package:travel_app/screens/optinal_trip/trip_schadual/activity_screen.dart';
import 'package:travel_app/screens/ticket_reservation/introduction/introduction_screen_ticket_reservation.dart';

appRoutes() => [
      GetPage(
        name: '/HotelChoisOptinalTrip',
        page: () => HotelChoisOptinalTrip(),
      ),
      GetPage(
        name: '/IntroductionScreenOptinalTrip',
        page: () => IntroductionScreenOptinalTrip(),
      ),
      GetPage(
        name: '/HotelDetailsScreen',
        page: () => HotelDetailsScreen(),
      ),
      GetPage(
        name: '/ActivityTableOptinalTrip',
        page: () => ActivityTableOptinalTrip(),
      ),
      GetPage(
        name: '/IntroductionConstTripScreen',
        page: () => IntroductionConstTripScreen(),
      ),
      GetPage(
        name: '/IntroductionScreenTicketREservation',
        page: () => IntroductionScreenTicketREservation(),
      ),
      GetPage(
        name: '/TicketsScreen',
        page: () => TicketsScreen(),
      ),
    ];
