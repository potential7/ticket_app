import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../res/app_styles.dart';

class TicketPositionWidget extends StatelessWidget {
  final bool? pos;
  const TicketPositionWidget({super.key, this.pos = true});

  @override
  Widget build(BuildContext context) {
    return  Positioned(
        left: pos==true?24:null,
        right: pos==true?null:24,
        top: 235,
        child: Container(
          padding: const EdgeInsets.all(3),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(width: 2),
          ),
          child: CircleAvatar(
            maxRadius: 4,
            backgroundColor: AppStyles.textColor,
          ),
        ));
  }
}
