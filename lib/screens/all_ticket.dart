import 'package:flutter/material.dart';
import 'package:ticket_app/app_routes.dart';
import 'package:ticket_app/base/res/ticket_view.dart';
import 'package:ticket_app/base/utils/all_json.dart';

class AllTicket extends StatelessWidget {
  const AllTicket({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          iconTheme: const IconThemeData(
            color: Colors.black87, //change your color here
          ),
        backgroundColor: Colors.white,
        title: const Text("All Tickets")
      ),
      body: ListView(
        children: [
          SingleChildScrollView(
            child: Column(
              children: ticketList
                  .map((singleTicket) => GestureDetector(
                onTap: (){
                  var index = ticketList.indexOf(singleTicket);
                  print('I tapped at ticket $index');
                  Navigator.pushNamed(context, AppRoutes.ticketScreen, arguments: {
                    "index" : index
                  });
                },
                    child: Container(
                margin: const EdgeInsets.only(bottom: 10),
                    child: TicketView(ticket: singleTicket, wholeScreen: true,)),
                  ))
                  .toList(),
            ),
          )
        ],
      ),
    );
  }
}
