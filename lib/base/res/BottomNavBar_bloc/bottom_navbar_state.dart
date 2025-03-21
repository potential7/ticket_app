part of 'bottom_navbar_bloc.dart';


abstract class BottomNavbarState {}


class BottomNavbarSelected extends BottomNavbarState {
  final int selectedIndex;

  BottomNavbarSelected(this.selectedIndex);

}
