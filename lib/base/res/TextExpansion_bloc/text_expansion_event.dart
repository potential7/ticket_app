part of 'text_expansion_bloc.dart';


abstract class TextExpansionEvent {}

class TextClicked extends TextExpansionEvent{
   final bool isExpanded;
   TextClicked(this.isExpanded);
}
