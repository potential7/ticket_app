import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/app_styles.dart';
import 'package:ticket_app/screens/home_screen/widget/app_layoutbuilder_widget.dart';
import 'package:ticket_app/screens/home_screen/widget/big_circle.dart';
import 'package:ticket_app/screens/home_screen/widget/big_dot.dart';
import '../../screens/home_screen/widget/appColumn_text_layout.dart';

class TicketView extends StatelessWidget {
  final Map<String, dynamic> ticket;
  final bool wholeScreen;
  final bool? isColor;

  const TicketView(
      {super.key,
      required this.ticket,
      this.wholeScreen = false,
      this.isColor});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width * 0.85,
      height: 168,
      child: Container(
        margin: EdgeInsets.only(right: wholeScreen == true ? 0 : 16),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                  color: isColor == null ? AppStyles.ticketBlue : Colors.white,
                  borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(21),
                      topLeft: Radius.circular(21))),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        ticket["from"]["code"],
                        style: AppStyles.headLineStyle3.copyWith(
                            color:
                                isColor == null ? Colors.white : Colors.black),
                      ),
                      Expanded(child: Container()),
                      BigDot(
                        isColor: isColor,
                      ),
                      Expanded(
                          child: Stack(
                        children: [
                          SizedBox(
                              height: 24,
                              child: AppLayoutBuilderWidget(
                                randomDivider: 6,
                                isColor: isColor,
                              )),
                          Center(
                            child: Transform.rotate(
                                angle: 1.5,
                                child: Icon(
                                  Icons.local_airport_rounded,
                                  color: isColor == null
                                      ? Colors.white
                                      : Colors.blue,
                                )),
                          )
                        ],
                      )),
                      BigDot(isColor: isColor),
                      Expanded(child: Container()),
                      Text(
                        ticket["to"]["code"],
                        style: AppStyles.headLineStyle3.copyWith(
                            color:
                                isColor == null ? Colors.white : Colors.black),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 100,
                        child: Text(
                          ticket["from"]["name"],
                          style: AppStyles.headLineStyle4.copyWith(
                              color: isColor == null
                                  ? Colors.white
                                  : Colors.grey.shade500),
                        ),
                      ),
                      Expanded(child: Container()),
                      Text(
                        ticket["flying_time"],
                        style: AppStyles.headLineStyle4.copyWith(
                            color: isColor == null
                                ? Colors.white
                                : Colors.grey.shade500),
                      ),
                      Expanded(child: Container()),
                      SizedBox(
                        width: 100,
                        child: Text(
                          ticket["to"]["name"],
                          textAlign: TextAlign.end,
                          style: AppStyles.headLineStyle4.copyWith(
                              color: isColor == null
                                  ? Colors.white
                                  : Colors.grey.shade500),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              color: isColor == null ? AppStyles.ticketOrange : Colors.white,
              child: Row(
                children: [
                  BigCircle(isTrue: true, isColor: isColor),
                  Expanded(
                      child: AppLayoutBuilderWidget(
                    randomDivider: 16,
                    width: 6,
                    isColor: isColor,
                  )),
                  BigCircle(isTrue: false, isColor: isColor),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                  color:
                      isColor == null ? AppStyles.ticketOrange : Colors.white,
                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(isColor == null ? 21 : 0),
                      bottomLeft: Radius.circular(isColor == null ? 21 : 0))),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(children: [
                    AppColumnTextLayout(
                      alignment: CrossAxisAlignment.start,
                      topText: ticket['date'],
                      bottomText: 'DATE',
                      isColor: isColor,
                    ),
                  ]),
                  AppColumnTextLayout(
                    alignment: CrossAxisAlignment.center,
                    topText: ticket['departure_time'],
                    bottomText: 'Departure Time',
                    isColor: isColor,
                  ),
                  AppColumnTextLayout(
                    alignment: CrossAxisAlignment.end,
                    topText: ticket['number'],
                    bottomText: 'Number',
                    isColor: isColor,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
