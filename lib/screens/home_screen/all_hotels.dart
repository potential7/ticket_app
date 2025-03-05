import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ticket_app/app_routes.dart';
import 'package:ticket_app/base/res/app_styles.dart';
import 'package:ticket_app/base/utils/all_json.dart';

class AllHotels extends StatelessWidget {
  const AllHotels({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyles.bgColor,
    appBar: AppBar(
      title: const Text(
        'All Hotels'
      ),
    ),

      body: Container(
        margin: const EdgeInsets.only(left: 12),
        child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 16,
              mainAxisSpacing: 16,
              childAspectRatio: 0.9
            ),
            itemCount: hotelList.length,
            itemBuilder: (context, index){
              var singleHotel = hotelList[index];
              return HotelGridView(hotel: singleHotel, index: index,);
            }),
      ),
    );
  }
}


class HotelGridView extends StatelessWidget {
  final Map<String, dynamic> hotel;
  final int index;
  const HotelGridView({super.key, required this.hotel, required this.index});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: (){
        Navigator.pushNamed(context, AppRoutes.hotelDetails, arguments: {"index":index });
      },
      child: Container(
        margin: const EdgeInsets.only(right: 12),
        padding: const EdgeInsets.all(8),
        // height: 350,
        // width: size.width * 0.6,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: AppStyles.primaryColor,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AspectRatio(
              aspectRatio: 1.2,
              child: Container(
                // height: 180,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  image:  DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage("assets/images/${hotel['image']}"),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15.0),
              child: FittedBox(
                  fit: BoxFit.fitHeight,
                child: Text(
                  hotel['place'],
                  style: AppStyles.headLineStyle3.copyWith(color: Colors.grey),
                ),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15.0),
                  child: Text(
                    hotel['destination'],
                    style: AppStyles.headLineStyle3.copyWith(color: Colors.white),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 15.0),
                  child: Text(
                    "\$${hotel['price']}/night",
                    style: AppStyles.headLineStyle4.copyWith(color: Colors.grey),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}