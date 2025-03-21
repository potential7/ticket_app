import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'text_expansion_event.dart';
part 'text_expansion_state.dart';

class TextExpansionBloc extends Bloc<TextExpansionEvent, TextExpansionState> {
  TextExpansionBloc() : super(TextExpansionInitial(false)) {
    on<TextClicked>((event, emit) {
      // TODO: implement event handler
      emit(TextExpansionInitial(!event.isExpanded));
    });
  }
}
