import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ticket_app/app_routes.dart';
import 'package:ticket_app/base/utils/all_json.dart';
import 'package:ticket_app/screens/home_screen/hotel.dart';
import '../../base/res/app_styles.dart';
import '../../base/res/media.dart';
import '../../base/res/ticket_view.dart';
import '../../base/widget/reuseable_widget/double_reuseable_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffeeedf2),
      body: ListView(
        children: [
          const SizedBox(
            height: 40,
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Good Morning', style: AppStyles.headLineStyle3),
                        const SizedBox(
                          height: 10,
                        ),
                        Text("Book Tickets", style: AppStyles.headLineStyle1),
                      ],
                    ),
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        image: const DecorationImage(
                            image: AssetImage(AppMedia.logo)),
                        borderRadius: BorderRadius.circular(15),
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 25,
                ),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color(0xfff4f6fd),
                  ),
                  child: const Row(
                    children: [
                      Icon(
                        FluentSystemIcons.ic_fluent_search_regular,
                        color: Color(0xffbfc205),
                      ),
                      Text('Search'),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                AppDoubleText(
                  bigText: 'Upcoming Flight',
                  smallText: 'View all',
                  func: () => Navigator.pushNamed(context, AppRoutes.allTickets),
                ),
                const SizedBox(
                  height: 20,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                      children: ticketList
                          .map((singleTicket) => GestureDetector(
                        onTap: (){
                          var index = ticketList.indexOf(singleTicket);
                          Navigator.pushNamed(context, AppRoutes.ticketScreen, arguments: {
                            "index" : index
                          });
                        },
                            child: Container(
                              child: TicketView(
                                    ticket: singleTicket,
                                  ),
                            ),
                          ))
                          .toList()),
                ),
                const SizedBox(
                  height: 20,
                ),
                AppDoubleText(
                    bigText: 'Hotels', smallText: 'View all', func: () {
                  Navigator.pushNamed(context, AppRoutes.allHotels);
                }),
                const SizedBox(
                  height: 20,
                ),
                SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: hotelList
                          .map((singleHotel) => GestureDetector(
                        onTap: (){
                          var index = hotelList.indexOf(singleHotel);
                          Navigator.of(context).pushNamed(AppRoutes.hotelDetails, arguments: {
                            "index": index
                          });
                        },
                            child: HotelRoom(
                                  hotel: singleHotel,
                                ),
                          ))
                          .toList(),
                    )),

              ],
            ),
          ),
        ],
      ),
    );
  }
}
