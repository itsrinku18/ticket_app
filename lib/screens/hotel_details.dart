import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:ticket_app/base/controller/text_expansion_controller.dart';
import 'package:ticket_app/base/res/styles/app_styles.dart';
import 'package:ticket_app/base/utils/all_json.dart';

class HotelDetails extends StatefulWidget {
  const HotelDetails({super.key});

  @override
  State<HotelDetails> createState() => _HotelDetailsState();
}

class _HotelDetailsState extends State<HotelDetails> {
  late int index = 0;

  @override
  void didChangeDependencies() {
    var args = ModalRoute.of(context)!.settings.arguments as Map;
    if (kDebugMode) {
      print(args["index"]);
    }
    index = args["index"];
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 300.0,
            floating: false,
            pinned: true,
            leading: Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                  decoration: BoxDecoration(
                      shape: BoxShape.circle, color: AppStyles.primaryColor),
                  child: const Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            flexibleSpace: FlexibleSpaceBar(
                // title: Text(hotelList[index]["place"]),
                background:
                    // Image.network("https://via.placeholder.com/600x400"),
                    Stack(
              children: [
                Positioned.fill(
                  child: Image.asset(
                    "assets/images/${hotelList[index]["image"]}",
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                    bottom: 20.0,
                    right: 20.0,
                    child: Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8, vertical: 4),
                        color: Colors.black.withOpacity(.5),
                        child: Text(
                          hotelList[index]["place"],
                          style: TextStyle(
                            color: Colors.white,
                            shadows: [
                              Shadow(
                                  blurRadius: 0.0,
                                  // color : Colors.red, // to check shadow
                                  color: AppStyles.primaryColor,
                                  offset: const Offset(2.0, 2.0))
                            ],
                            fontSize: 24,
                          ),
                        )))
              ],
            )),
          ),
          SliverList(
              delegate: SliverChildListDelegate([
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: ExpandedTextWidget(text: hotelList[index]["details"]),
            ),
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                "More Images",
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              height: 200,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: hotelList[index]["images"].length,
                itemBuilder: (context, imagesIndex) {
                  print("${hotelList[index]["images"][0]}");
                  return Container(
                      margin: const EdgeInsets.all(16),
                      color: Colors.red,
                      child: Image.asset(
                          "assets/images/${hotelList[index]["images"][imagesIndex]}"));
                  // Image.network("https://via.placeholder.com/200x200"));
                },
              ),
            )
          ]))
        ],
      ),
    );
  }
}

class ExpandedTextWidget extends StatelessWidget {
  ExpandedTextWidget({super.key, required this.text});

  final String text;

  //dependency injection
  final TextExpansionController textExpansionController =
      Get.put(TextExpansionController());

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      var textWidget = Text(
        text,
        maxLines: textExpansionController.isExpanded.value ? null : 3,
        overflow: textExpansionController.isExpanded.value
            ? TextOverflow.visible
            : TextOverflow.ellipsis,
      );
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          textWidget,
          GestureDetector(
            onTap: () {
              textExpansionController.toggleExpansion();
            },
            child: Text(
              textExpansionController.isExpanded.value ? 'Less' : 'More',
              style: AppStyles.textStyle.copyWith(
                color: AppStyles.primaryColor,
              ),
            ),
          )
        ],
      );
    });
  }
}
