import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:get/get.dart';
// import 'package:ticket_app/controller/bottom_nav_controller.dart';
import 'package:ticket_app/screens/home_screen/home_screen.dart';
import '../../screens/profile/profile_screen.dart';
import '../../screens/search/search.dart';
import '../../screens/ticket_screen/ticket_screen.dart';
import '../res/BottomNavBar_bloc/bottom_navbar_bloc.dart';


class BottomNavBar extends StatelessWidget {
  BottomNavBar({super.key});

  // final BottomNavController controller = Get.put(BottomNavController());

  final appScreens = [
    const HomeScreen(),
    const Search(),
    const TicketScreen(),
    const ProfileScreen(),
  ];


  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BottomNavbarBloc, BottomNavbarState>(
  builder: (context, state) {
    if(state is BottomNavbarSelected) {
      return Scaffold(
      body: appScreens[state.selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: state.selectedIndex,
        onTap: (int index){context.read<BottomNavbarBloc>().add(OnItemTapped(index));},
        selectedItemColor: Colors.blueGrey,
        unselectedItemColor: const Color(0xFF526400),
        showSelectedLabels: false,
        items: const [
          BottomNavigationBarItem(icon: Icon(FluentSystemIcons.ic_fluent_home_regular),
              activeIcon: Icon(FluentSystemIcons.ic_fluent_home_filled),
              label: "Home"),
          BottomNavigationBarItem(icon: Icon(FluentSystemIcons.ic_fluent_search_regular),
              activeIcon: Icon(FluentSystemIcons.ic_fluent_search_filled),
              label: "Search"),
          BottomNavigationBarItem(icon: Icon(FluentSystemIcons.ic_fluent_ticket_regular),
              activeIcon: Icon(FluentSystemIcons.ic_fluent_ticket_filled),
              label: "Tickets"),
          BottomNavigationBarItem(icon: Icon(FluentSystemIcons.ic_fluent_person_regular),
              activeIcon: Icon(FluentSystemIcons.ic_fluent_person_filled),
              label: "Person"),

        ],),
    );
    }else{
      return Container();
    }
  },
);
    }
  }

