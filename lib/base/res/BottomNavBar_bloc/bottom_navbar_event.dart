part of 'bottom_navbar_bloc.dart';

abstract class BottomNavbarEvent {

}
 class OnItemTapped extends BottomNavbarEvent{
  final int index;
  OnItemTapped(this.index){

  }
 }
