import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/app_styles.dart';
import 'package:ticket_app/base/res/media.dart';
import 'package:ticket_app/screens/home_screen/widget/text_style_third.dart';

import '../home_screen/widget/appColumn_text_layout.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyles.bgColor,
      body: ListView(
        padding: const EdgeInsets.only(top: 80),
        children: [
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 86,
                      width: 86,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: const DecorationImage(
                              image: AssetImage(AppMedia.logo))),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Book Tickets",
                          style: AppStyles.headLineStyle1,
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        const Text("new york",
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.w500)),
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          padding: const EdgeInsets.all(3),
                          decoration: BoxDecoration(
                            color: const Color(0xFFFEF4F3),
                            borderRadius: BorderRadius.circular(100),
                          ),
                          child: Row(
                            children: [
                              Container(
                                padding: const EdgeInsets.all(3),
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Color(0xFF526799),
                                ),
                                child: const Icon(
                                  FluentSystemIcons.ic_fluent_shield_filled,
                                  color: Colors.white,
                                  size: 15,
                                ),
                              ),
                              const SizedBox(
                                width: 4,
                              ),
                              const Text(
                                "Premium Status",
                                style: TextStyle(
                                    color: Color(0xFF526799),
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Expanded(child: Container()),
                    GestureDetector(child: const Text("Edit"))
                  ],
                ),
                const SizedBox(
                  height: 8,
                ),
                Divider(
                  color: Colors.grey.shade300,
                  thickness: 1,
                ),
                const SizedBox(
                  height: 10,
                ),
                Stack(
                  children: [
                    Container(
                      height: 90,
                      decoration: BoxDecoration(
                        color: AppStyles.primaryColor,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Container(
                        margin: const EdgeInsets.symmetric(
                            horizontal: 25, vertical: 20),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 10),
                              decoration: const BoxDecoration(
                                color: Colors.white,
                                shape: BoxShape.circle,
                              ),
                              child: Icon(
                                FluentSystemIcons
                                    .ic_fluent_lightbulb_filament_filled,
                                size: 27,
                                color: AppStyles.primaryColor,
                              ),
                            ),
                            const SizedBox(
                              width: 12,
                            ),
                            const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                TextStyleThird(text: "You\'ve got a new award"),
                                SizedBox(
                                  height: 3,
                                ),
                                TextStyleThird(
                                    text: "You flew 95times this year "),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                        right: -40,
                        top: -40,
                        child: Container(
                          padding: const EdgeInsets.all(30),
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                  width: 18, color: const Color(0xff264CD2))),
                        ))
                  ],
                ),
                const SizedBox(
                  height: 25,
                ),
                Text(
                  "Accumulated miles",
                  style: AppStyles.headLineStyle2,
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18),
                    color: AppStyles.bgColor,
                  ),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 20,
                      ),
                      Center(
                        child: Text(
                          '194537',
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              color: AppStyles.textColor,
                              fontSize: 45),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Miles Accused",
                            style:
                                AppStyles.headLineStyle4.copyWith(fontSize: 16),
                          ),
                          Text(
                            "16th July",
                            style:
                                AppStyles.headLineStyle4.copyWith(fontSize: 16),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 4,
                      ),
                      Divider(
                        color: Colors.grey.shade500,
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          AppColumnTextLayout(
                            isColor: false,
                            topText: '23 402',
                            bottomText: 'Miles',
                            alignment: CrossAxisAlignment.start,
                          ),
                          AppColumnTextLayout(
                            isColor: false,
                            topText: 'McDonald\'s',
                            bottomText: 'Received from',
                            alignment: CrossAxisAlignment.end,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 4,
                      ),
                      Divider(
                        color: Colors.grey.shade500,
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          AppColumnTextLayout(
                            isColor: false,
                            topText: '53 805',
                            bottomText: 'Miles',
                            alignment: CrossAxisAlignment.start,
                          ),
                          AppColumnTextLayout(
                            isColor: false,
                            topText: 'Dīvur',
                            bottomText: 'Received from',
                            alignment: CrossAxisAlignment.end,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 4,
                      ),
                      Divider(
                        color: Colors.grey.shade500,
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          AppColumnTextLayout(
                            isColor: false,
                            topText: '23 402',
                            bottomText: 'Miles',
                            alignment: CrossAxisAlignment.start,
                          ),
                          AppColumnTextLayout(
                            isColor: false,
                            topText: 'Chinedu',
                            bottomText: 'Received from',
                            alignment: CrossAxisAlignment.end,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 35,
                      ),
                      InkWell(
                        onTap: (){
                          print('just tapped');
                        },
                        child: Text(
                          'How to get more miles',
                          style: AppStyles.textStyle
                              .copyWith(color: AppStyles.primaryColor),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
