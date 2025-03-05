import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/app_styles.dart';

class AppTextIcon extends StatelessWidget {
  final String text;
  final IconData icon;
  const AppTextIcon({super.key, required this.text, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(17),
        color: Colors.white

      ),
      child: Row(
           children: [
             Icon(icon, color: AppStyles.planeColor,),
             const SizedBox(width: 10,),
             Text(text, style: AppStyles.textStyle,)
           ],
      ),
    );

  }
}
