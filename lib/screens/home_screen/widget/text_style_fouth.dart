import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../base/res/app_styles.dart';

class TextStyleFourth  extends StatelessWidget {
  final String text;
  final bool? isColor;
  final TextAlign? align;
  const TextStyleFourth ({super.key, required this.text, this.isColor, this.align});

  @override
  Widget build(BuildContext context) {
    return  Text(
      text,
      textAlign: align,
      style: isColor == null? AppStyles.headLineStyle4
          .copyWith(color: Colors.white): AppStyles.headLineStyle4.copyWith(color: Colors.grey.shade500),
    );
  }
}
