import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/app_styles.dart';
import 'package:ticket_app/base/res/media.dart';
import 'package:ticket_app/base/widget/reuseable_widget/double_reuseable_widget.dart';
import 'package:ticket_app/screens/search/widget/appTicketTaps.dart';
import 'package:ticket_app/screens/search/widget/app_text_icon.dart';
import 'package:ticket_app/screens/search/widget/find_Tickets.dart';

class Search extends StatelessWidget {
  const Search({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppStyles.bgColor,
      body: ListView(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        children: [
          const SizedBox(
            height: 40,
          ),
          Text(
            "What are\nyou looking for?",
            style: AppStyles.headLineStyle1.copyWith(fontSize: 35),
          ),
          const SizedBox(
            height: 25,
          ),
          const AppTicketTaps(firstTab: 'Airline', secondTab: 'Hotels',),
          const SizedBox(
            height: 20,
          ),
          const AppTextIcon(
              text: 'Departure', icon: Icons.flight_takeoff_rounded),
          const SizedBox(
            height: 20,
          ),
          const AppTextIcon(text: 'Arrival', icon: Icons.flight_land_rounded),
          const SizedBox(
            height: 25,
          ),
          const FindTickets(),
          const SizedBox(
            height: 40,
          ),
          AppDoubleText(
              bigText: 'Upcoming Flight', smallText: 'View all', func: () {}),
          const SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: size.width * .42,
                height: 415,
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                          blurRadius: 1,
                          spreadRadius: 2,
                          color: Colors.grey.shade200)
                    ]),
                child: Column(
                  children: [
                    Container(
                      height: 210,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          image: const DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage(
                              AppMedia.planeSit,
                            ),
                          )),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    Text(
                      "20% Discount on the early booking of the flight. Don't miss.",
                      style: AppStyles.headLineStyle2,
                    )
                  ],
                ),
              ),
              Column(
                children: [
                  Stack(
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 12,vertical: 12),
                        height: 210,
                        width: size.width * .44,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(18),
                            color: Colors.blueGrey),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Discount\nfor Survey",
                              style: AppStyles.headLineStyle2.copyWith(
                                  fontWeight: FontWeight.bold, color: Colors.white),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Take the survey about our services and get discount",
                              style: AppStyles.headLineStyle2.copyWith(
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white,
                                  fontSize: 18),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        right: -45,
                        top: -40,
                        child: Container(
                          padding: const EdgeInsets.all(30),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(width: 18, color: const Color(0xff189999)
                            ),
                          ),),
                      ),
                    ],
                  )

                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
