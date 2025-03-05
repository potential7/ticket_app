import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppTicketTaps extends StatelessWidget {
  final String firstTab;
  final String secondTab;
  const AppTicketTaps({super.key, required this.firstTab, required this.secondTab});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: const Color(0xfff4f6fd),
          borderRadius: BorderRadius.circular(50)),
      child:  Row(
        children: [
          AppTaps(appText: firstTab, textBgColor: Colors.white, ),
          AppTaps(
            appText: secondTab,
            tabBorder: true,
            textBgColor: Colors.transparent,
          )
        ],
      ),
    );
  }
}

class AppTaps extends StatelessWidget {
  final String appText;
  final bool tabBorder;
  final Color textBgColor;

  const AppTaps(
      {super.key,
      required this.appText,
      required this.textBgColor,
      this.tabBorder = false});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final width = size.width;
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 7),
      width: width * .44,
      decoration:
        BoxDecoration(
              borderRadius: tabBorder == false ? const BorderRadius.horizontal(left: Radius.circular(50)):
              const BorderRadius.horizontal(right: Radius.circular(50)),
              color: textBgColor),
      child: Center(child: Text(appText)),
    );
  }
}
