import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ticket_app/screens/home_screen/widget/text_style_fouth.dart';
import 'package:ticket_app/screens/home_screen/widget/text_style_third.dart';


class AppColumnTextLayout extends StatelessWidget {
  final String topText;
  final String bottomText;
  final CrossAxisAlignment alignment;
  final bool? isColor;

  const AppColumnTextLayout(
      {super.key,
      required this.alignment,
      required this.topText,
      required this.bottomText,
      this.isColor});

      @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: alignment, children: [
      TextStyleThird(
        text: topText,
        isColor: isColor,
      ),
      const SizedBox(
        height: 5,
      ),
      TextStyleFourth(
        text: bottomText,
        isColor: isColor,
      ),
    ]);
  }
}
