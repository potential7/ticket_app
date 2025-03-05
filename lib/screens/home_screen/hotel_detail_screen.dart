import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/app_styles.dart';
import 'package:ticket_app/base/utils/all_json.dart';

class HotelDetails extends StatefulWidget {
  const HotelDetails({super.key});

  @override
  State<HotelDetails> createState() => _HotelDetailsState();
}

class _HotelDetailsState extends State<HotelDetails> {
  late int hotelIndex = 0;

  @override
  void didChangeDependencies() {
    var arg = ModalRoute.of(context)!.settings.arguments as Map;
    hotelIndex = arg['index'];

    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            leading: Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                onTap: () => Navigator.pop(context),
                child: Container(
                  decoration: BoxDecoration(
                      shape: BoxShape.circle, color: AppStyles.primaryColor),
                  child: Icon(Icons.arrow_back_ios_new),
                ),
              ),
            ),
            expandedHeight: 200,
            floating: false,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              // title:  Text("${hotelList[hotelIndex]["place"]}"),
              background: Stack(
                children: [
                  Positioned.fill(
                    child: Image.asset(
                      "assets/images/${hotelList[hotelIndex]["image"]}",
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    bottom: 20,
                    right: 20,
                    child: Container(
                      color: Colors.black.withOpacity(0.5),
                      child: Text(
                        "${hotelList[hotelIndex]["place"]}",
                        style: TextStyle(
                            fontSize: 20,
                            color: AppStyles.bgColor,
                            shadows: [
                              Shadow(
                                  blurRadius: 10,
                                  // color: Colors.red,
                                  color: AppStyles.bgColor,
                                  offset: const Offset(2, 2))
                            ]),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          SliverList(
              delegate: SliverChildListDelegate([
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: ExpandedTextWidget(
                  text:
                      "CustomScrollView is a scrollable widget that allows you to create highly customized scrolling effects by combining different scrollable widgets Slivers"
                      "Unlike ListView or GridView, which only scroll vertically or horizontally with fixed child layouts, CustomScrollView gives you more flexibility by mixing different scrollable widgets inside one scroll view."),
            ),
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                "More Images",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              height: 200,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15)),
                        padding: const EdgeInsets.all(16),
                        child: Image.network("https://picsum.photos/200/200"));
                  }),
            )
          ])),
        ],
      ),
    );
  }
}

class ExpandedTextWidget extends StatefulWidget {
  final String text;
  const ExpandedTextWidget({super.key, required this.text});

  @override
  State<ExpandedTextWidget> createState() => _ExpandedTextWidgetState();
}

class _ExpandedTextWidgetState extends State<ExpandedTextWidget> {
  bool toggleText = false;

  void toggleExpansion() {
    setState(() {
      toggleText = !toggleText;
    });
    print('The value is $toggleText');
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.text,
          overflow: toggleText ? TextOverflow.visible : TextOverflow.ellipsis,
          maxLines: toggleText ? null : 3,
        ),
        GestureDetector(
          onTap: toggleExpansion,
          child: Text(
            toggleText ? "Show Less" : "Read More",
            style: const TextStyle(color: Colors.blue),
          ),
        )
      ],
    );
  }
}
