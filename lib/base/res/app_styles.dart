import 'package:flutter/material.dart';

Color primary = const Color(0xff687daf);

class AppStyles{
  static Color primaryColor = primary;
  static Color bgColor = const Color(0xffeeedf2);
  static Color textColor = const Color(0xff3b3b3b);
  static Color ticketBlue = const Color(0xff526799);
  static Color ticketOrange = const Color(0xfff37b67);
  static Color ticketTapColor = const Color(0xfff4f6fd);
  static Color planeColor = const Color(0xffbfc2df);
  static Color findTicketColor = const Color(0xffbfc2df);
  static Color circleColor = const Color(0xffbfc2df);
  static Color dotColor = const Color(0xffbfc2df);
  static Color planeSecondColor = const Color(0xffbfc2df);

  static TextStyle textStyle = TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w500,
      color: textColor
  );
  static TextStyle headLineStyle1 =   TextStyle(
    fontSize: 26,
    fontWeight: FontWeight.bold,
    color: textColor
  );
  static TextStyle headLineStyle2 =  TextStyle(
      fontSize: 21,
      fontWeight: FontWeight.bold,
      color: textColor
  );
  static TextStyle headLineStyle3 = const TextStyle(
      fontSize: 17,
      fontWeight: FontWeight.w500,

  );
  static TextStyle headLineStyle4 =  TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w500,
       color: Colors.grey.shade500,

  );
}