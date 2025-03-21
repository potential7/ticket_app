import 'package:bloc/bloc.dart';

part 'bottom_navbar_event.dart';
part 'bottom_navbar_state.dart';

class BottomNavbarBloc extends Bloc<BottomNavbarEvent, BottomNavbarState> {
  BottomNavbarBloc() : super(BottomNavbarSelected(0)) {
    on<OnItemTapped>((event, emit) {
      // TODO: implement event handler
      emit(BottomNavbarSelected(event.index));
    });
  }
}
