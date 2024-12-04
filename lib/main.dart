import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:ticket_app/base/bottom_nav_bar.dart';
import 'package:ticket_app/screens/home/all_hotels.dart';
import 'package:ticket_app/screens/home/all_tickets.dart';
import 'package:ticket_app/screens/hotel_details.dart';
import 'package:ticket_app/screens/ticket/ticket_screen.dart';

import 'base/utils/app_routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      // home: const BottomNavBar(),
      routes: {
        AppRoutes.homePage: (context) =>  BottomNavBar(),
        AppRoutes.allTickets: (context) => const AllTickets(),
        AppRoutes.allHotels: (context) => const AllHotels(),
        AppRoutes.ticketScreen: (context) => const TicketScreen(),
        AppRoutes.hotelDetails: (context) => const HotelDetails(),
      },
    );
  }
}
