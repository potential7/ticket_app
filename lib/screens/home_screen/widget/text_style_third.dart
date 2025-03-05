import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../base/res/app_styles.dart';

class TextStyleThird extends StatelessWidget {
  final String text;
  final bool? isColor;
  const TextStyleThird({super.key, required this.text, this.isColor});

  @override
  Widget build(BuildContext context) {
    return  Text(
      text,
      style: AppStyles.headLineStyle3
          .copyWith(color: isColor == null?Colors.white: Colors.black),
    );
  }
}
