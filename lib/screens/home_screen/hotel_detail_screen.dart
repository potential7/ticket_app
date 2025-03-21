import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:ticket_app/base/res/app_styles.dart';
import 'package:ticket_app/base/utils/all_json.dart';


import '../../base/res/TextExpansion_bloc/text_expansion_bloc.dart';

class HotelDetails extends StatefulWidget {
  const HotelDetails({super.key});

  @override
  State<HotelDetails> createState() => _HotelDetailsState();
}

class _HotelDetailsState extends State<HotelDetails> {
  late int index = 0;

  @override
  void didChangeDependencies() {
    var arg = ModalRoute
        .of(context)!
        .settings
        .arguments as Map;
    index = arg['index'];

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
                  child:  const Icon(Icons.arrow_back_ios_new, color:  Colors.white,),
                ),
              ),
            ),
            expandedHeight: 200,
            floating: false,
            pinned: true,
            backgroundColor: AppStyles.primaryColor,
            flexibleSpace: LayoutBuilder(
              builder: (context, constraints) {
                double expansionPercentage =
                    (constraints.maxHeight - kToolbarHeight) /
                        (200.0 - kToolbarHeight);
                print("$expansionPercentage");
                return FlexibleSpaceBar(
                  collapseMode: CollapseMode.pin,
                  title: expansionPercentage < 0.5
                      ? Text(
                    "${hotelList[index]["place"]}".toUpperCase(),
                    style: TextStyle(fontSize: 20),
                  )
                      : null,
                  background: Stack(
                    fit: StackFit.expand,
                    children: [
                      Positioned(
                        child: Image.asset(
                          "assets/images/${hotelList[index]["image"]}",
                          fit: BoxFit.cover,
                        ),
                      ),
                      if (expansionPercentage > 0.5)
                        Positioned(
                          bottom: 20,
                          right: 20,
                          child: Container(
                            color: Colors.black.withOpacity(0.5),
                            child: Text(
                              "${hotelList[index]["place"]}",
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
                );
              },
            ),
          ),
          SliverList(
              delegate: SliverChildListDelegate([
                const Padding(
                  padding: EdgeInsets.all(16.0),
                  child: ExpandedTextWidget(
                      text:
                      "CustomScrollView is a scrollable widget that allows you to create highly customized scrolling effects by combining different scrollable widgets Slivers"
                          "Unlike ListView or GridView, which only scroll vertically or horizontally with fixed child layouts, CustomScrollView gives you more flexibility by mixing different scrollable widgets inside one scroll view."
                          "Unlike ListView or GridView, which only scroll vertically or horizontally with fixed child layouts, CustomScrollView gives you more flexibility by mixing different scrollable widgets inside one scroll view."
                          "Unlike ListView or GridView, which only scroll vertically or horizontally with fixed child layouts, CustomScrollView gives you more flexibility by mixing different scrollable widgets inside one scroll view."
                          "Unlike ListView or GridView, which only scroll vertically or horizontally with fixed child layouts, CustomScrollView gives you more flexibility by mixing different scrollable widgets inside one scroll view."
                          "Unlike ListView or GridView, which only scroll vertically or horizontally with fixed child layouts, CustomScrollView gives you more flexibility by mixing different scrollable widgets inside one scroll view."
                          "Unlike ListView or GridView, which only scroll vertically or horizontally with fixed child layouts, CustomScrollView gives you more flexibility by mixing different scrollable widgets inside one scroll view."),
                ),
                const Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Text(
                    "More Images",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: 200,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: hotelList[index]['images'].length,
                      itemBuilder: (context, imagesIndex) {
                        return Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15)),
                            padding: const EdgeInsets.all(16),
                            child: Image.asset(
                                "assets/images/${hotelList[index]['images'][imagesIndex]}"));
                      }),
                )
              ])),
        ],
      ),
    );
  }
}

class ExpandedTextWidget extends StatelessWidget {
  final String text;

  const ExpandedTextWidget({super.key, required this.text});

  // final ToggleExpansionController controller =
  //     Get.put(ToggleExpansionController());

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TextExpansionBloc, TextExpansionState>(
      builder: (context, state) {

        if(state is TextExpansionInitial){
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              text,
              overflow: state.isExpanded
                  ? TextOverflow.visible
                  : TextOverflow.ellipsis,
              maxLines: state.isExpanded ? null : 6,
            ),
            GestureDetector(
                onTap: () => context.read<TextExpansionBloc>().add(TextClicked(state.isExpanded)),
                child: Text(
                  state.isExpanded ? "Less" : "More",
                  style: const TextStyle(color: Colors.blue),
                )),
          ],
        );
      }else{
           return Container();
        }
      }
    );
  }
}
