import 'package:flutter/material.dart';

import '../colors/colors.dart';
import '../widget/image_widget.dart';
import '../widget/text_widget.dart';
import 'home_pages.dart';


class IntroPages extends StatefulWidget {
  const IntroPages({Key? key}) : super(key: key);

  @override
  State<IntroPages> createState() => _IntroPagesState();
}

class _IntroPagesState extends State<IntroPages> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 3,
              child: Container(
                width: width,
                decoration: const BoxDecoration(
                  color: ResColor.white,
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 25, right: 25, top: 50),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const ImageWidget(
                            image: "assets/icons/ic_menu.png",
                            height: 19,
                            width: 25,
                          ),
                          Container(
                            height: 58,
                            width: 58,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: ResColor.iconColor),
                            child: const ImageWidget(
                              image: "assets/icons/ic_imag.png",
                              height: 24,
                              width: 24,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 30),
                      const TextWidget(
                        text: "My Flights",
                        size: 32,
                        fontWeight: FontWeight.w600,
                        fontFamily: "Outfit",
                        color: ResColor.minTextColor,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 9,
              child: Container(
                width: width,
                decoration: const BoxDecoration(
                  color: ResColor.backgroundColor,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(35),
                    topRight: Radius.circular(35),
                  ),
                ),
                child: SingleChildScrollView(
                  child: SizedBox(
                    height: height,
                    width: width,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 74),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 44, right: 44),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    TextWidget(
                                      text: "MCO",
                                      size: 32,
                                      fontWeight: FontWeight.w300,
                                      fontFamily: "Overpass",
                                      color: ResColor.maxTextColor,
                                    ),
                                    TextWidget(
                                      text: "Orlando",
                                      size: 12,
                                      fontWeight: FontWeight.w500,
                                      fontFamily: "OverpassMedium",
                                      color: ResColor.white,
                                    ),
                                    SizedBox(height: 18),
                                    TextWidget(
                                      text: "Date",
                                      size: 12,
                                      fontWeight: FontWeight.w500,
                                      fontFamily: "OverpassMedium",
                                      color: ResColor.white,
                                    ),
                                    SizedBox(height: 4),
                                    TextWidget(
                                      text: "May 11, 8:45 am",
                                      size: 12,
                                      fontWeight: FontWeight.w500,
                                      fontFamily: "OverpassMedium",
                                      color: ResColor.white,
                                    ),
                                  ],
                                ),
                                const SizedBox(width: 44),
                                const Column(
                                  children: [
                                    SizedBox(height: 20),
                                    Image(
                                      image:
                                          AssetImage("assets/icons/ic_tg.png"),
                                      height: 38.5,
                                      width: 70,
                                    ),
                                    SizedBox(height: 12),
                                    TextWidget(
                                      text: "1h 43m",
                                      size: 12,
                                      fontWeight: FontWeight.w500,
                                      fontFamily: "OverpassMedium",
                                      color: ResColor.white,
                                    ),
                                  ],
                                ),
                                const SizedBox(width: 45),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    const TextWidget(
                                      text: "ATL",
                                      size: 32,
                                      fontWeight: FontWeight.w300,
                                      fontFamily: "Overpass",
                                      color: ResColor.maxTextColor,
                                    ),
                                    const TextWidget(
                                      text: "Atlanta",
                                      size: 12,
                                      fontWeight: FontWeight.w500,
                                      fontFamily: "OverpassMedium",
                                      color: ResColor.white,
                                    ),
                                    const SizedBox(height: 18),
                                    const TextWidget(
                                      text: "Flight Number",
                                      size: 12,
                                      fontWeight: FontWeight.w500,
                                      fontFamily: "OverpassMedium",
                                      color: ResColor.white,
                                    ),
                                    const SizedBox(height: 4),
                                    const TextWidget(
                                      text: "F12234",
                                      size: 12,
                                      fontWeight: FontWeight.w500,
                                      fontFamily: "OverpassMedium",
                                      color: ResColor.white,
                                    ),
                                    const SizedBox(height: 19),
                                    GestureDetector(
                                      onTap: () {
                                        Navigator.of(context).push(
                                          MaterialPageRoute(
                                            builder: (_) => const HomePages(),
                                          ),
                                        );
                                      },
                                      child: const TextWidget(
                                        text: "View Ticket >",
                                        size: 12,
                                        fontWeight: FontWeight.w500,
                                        fontFamily: "OverpassMedium",
                                        color: ResColor.white,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 4, left: 24, right: 24),
                            child: Container(
                              width: width,
                              height: 1,
                              color: ResColor.maxTextColor,
                            ),
                          ),
                          const Padding(
                            padding:
                                EdgeInsets.only(top: 37.5, left: 44, right: 44),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    TextWidget(
                                      text: "ATL",
                                      size: 32,
                                      fontWeight: FontWeight.w300,
                                      fontFamily: "Overpass",
                                      color: ResColor.maxTextColor,
                                    ),
                                    TextWidget(
                                      text: "Atlanta",
                                      size: 12,
                                      fontWeight: FontWeight.w500,
                                      fontFamily: "OverpassMedium",
                                      color: ResColor.white,
                                    ),
                                    SizedBox(height: 18),
                                    TextWidget(
                                      text: "Date",
                                      size: 12,
                                      fontWeight: FontWeight.w500,
                                      fontFamily: "OverpassMedium",
                                      color: ResColor.white,
                                    ),
                                    SizedBox(height: 4),
                                    TextWidget(
                                      text: "June 12, 12:20 pm",
                                      size: 12,
                                      fontWeight: FontWeight.w500,
                                      fontFamily: "OverpassMedium",
                                      color: ResColor.white,
                                    ),
                                  ],
                                ),
                                SizedBox(width: 30),
                                Column(
                                  children: [
                                    SizedBox(height: 20),
                                    Image(
                                      image:
                                          AssetImage("assets/icons/ic_tg.png"),
                                      height: 38.5,
                                      width: 70,
                                    ),
                                    SizedBox(height: 12),
                                    TextWidget(
                                      text: "4h 29m",
                                      size: 12,
                                      fontWeight: FontWeight.w500,
                                      fontFamily: "OverpassMedium",
                                      color: ResColor.white,
                                    ),
                                  ],
                                ),
                                SizedBox(width: 45),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    TextWidget(
                                      text: "LAX",
                                      size: 32,
                                      fontWeight: FontWeight.w300,
                                      fontFamily: "Overpass",
                                      color: ResColor.maxTextColor,
                                    ),
                                    TextWidget(
                                      text: "Los Angeles",
                                      size: 12,
                                      fontWeight: FontWeight.w500,
                                      fontFamily: "OverpassMedium",
                                      color: ResColor.white,
                                    ),
                                    SizedBox(height: 18),
                                    TextWidget(
                                      text: "Flight Number",
                                      size: 12,
                                      fontWeight: FontWeight.w500,
                                      fontFamily: "OverpassMedium",
                                      color: ResColor.white,
                                    ),
                                    SizedBox(height: 4),
                                    TextWidget(
                                      text: "F12234",
                                      size: 12,
                                      fontWeight: FontWeight.w500,
                                      fontFamily: "OverpassMedium",
                                      color: ResColor.white,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 37, left: 24, right: 24),
                            child: Container(
                              width: width,
                              height: 1,
                              color: ResColor.maxTextColor,
                            ),
                          ),
                          const Padding(
                            padding:
                                EdgeInsets.only(top: 37.5, left: 44, right: 44),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    TextWidget(
                                      text: "ATL",
                                      size: 32,
                                      fontWeight: FontWeight.w300,
                                      fontFamily: "Overpass",
                                      color: ResColor.maxTextColor,
                                    ),
                                    TextWidget(
                                      text: "Atlanta",
                                      size: 12,
                                      fontWeight: FontWeight.w500,
                                      fontFamily: "OverpassMedium",
                                      color: ResColor.white,
                                    ),
                                    SizedBox(height: 18),
                                    TextWidget(
                                      text: "Date",
                                      size: 12,
                                      fontWeight: FontWeight.w500,
                                      fontFamily: "OverpassMedium",
                                      color: ResColor.white,
                                    ),
                                    SizedBox(height: 4),
                                    TextWidget(
                                      text: "June 12, 12:20 pm",
                                      size: 12,
                                      fontWeight: FontWeight.w500,
                                      fontFamily: "OverpassMedium",
                                      color: ResColor.white,
                                    ),
                                  ],
                                ),
                                SizedBox(width: 30),
                                Column(
                                  children: [
                                    SizedBox(height: 20),
                                    Image(
                                      image:
                                          AssetImage("assets/icons/ic_tg.png"),
                                      height: 38.5,
                                      width: 70,
                                    ),
                                    SizedBox(height: 12),
                                    TextWidget(
                                      text: "4h 29m",
                                      size: 12,
                                      fontWeight: FontWeight.w500,
                                      fontFamily: "OverpassMedium",
                                      color: ResColor.white,
                                    ),
                                  ],
                                ),
                                SizedBox(width: 45),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    TextWidget(
                                      text: "LAX",
                                      size: 32,
                                      fontWeight: FontWeight.w300,
                                      fontFamily: "Overpass",
                                      color: ResColor.maxTextColor,
                                    ),
                                    TextWidget(
                                      text: "Los Angeles",
                                      size: 12,
                                      fontWeight: FontWeight.w500,
                                      fontFamily: "OverpassMedium",
                                      color: ResColor.white,
                                    ),
                                    SizedBox(height: 18),
                                    TextWidget(
                                      text: "Flight Number",
                                      size: 12,
                                      fontWeight: FontWeight.w500,
                                      fontFamily: "OverpassMedium",
                                      color: ResColor.white,
                                    ),
                                    SizedBox(height: 4),
                                    TextWidget(
                                      text: "F12234",
                                      size: 12,
                                      fontWeight: FontWeight.w500,
                                      fontFamily: "OverpassMedium",
                                      color: ResColor.white,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: GestureDetector(
        onTap: () {},
        child: Container(
          height: 80,
          width: 80,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: ResColor.maxTextColor),
          child: const Icon(
            Icons.add,
            size: 30,
            color: ResColor.backgroundColor,
          ),
        ),
      ),
    );
  }
}
