import 'package:flutter/material.dart';
import 'package:ticket_app/app_routes.dart';
import 'package:ticket_app/base/res/app_styles.dart';
import 'package:ticket_app/screens/all_ticket.dart';
import 'package:ticket_app/screens/home_screen/all_hotels.dart';
import 'package:ticket_app/screens/home_screen/hotel_detail_screen.dart';
import 'package:ticket_app/screens/ticket_screen/ticket_screen.dart';

import 'base/widget/buttom_Nav_Bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          appBarTheme:  AppBarTheme(
        backgroundColor: AppStyles.bgColor, // Set AppBar background color
        iconTheme: const IconThemeData(color: Colors.black),
        elevation: 0,
        // Change back button color
        titleTextStyle: const TextStyle(
            color: Colors.black, fontSize: 20), // Change title text color
      )),
      routes: {
        AppRoutes.homePage: (context) => const BottomNavBar(),
        AppRoutes.allTickets: (context) => const AllTicket(),
        AppRoutes.ticketScreen: (context) => const TicketScreen(),
        AppRoutes.allHotels: (context) => const AllHotels(),
        AppRoutes.hotelDetails: (context) => const HotelDetails(),
      },
    );
  }
}
