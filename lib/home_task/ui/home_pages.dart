import 'package:flutter/material.dart';

import '../colors/colors.dart';
import '../widget/image_widget.dart';
import '../widget/text_widget.dart';
import 'menu_pages.dart';

class HomePages extends StatefulWidget {
  const HomePages({Key? key}) : super(key: key);

  @override
  State<HomePages> createState() => _HomePagesState();
}

class _HomePagesState extends State<HomePages> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: ResColor.backgroundColor,
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 25, right: 25, top: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).pop();
                        },
                        child: const ImageWidget(
                          image: "assets/icons/ic_back.png",
                          height: 17,
                          width: 19.83,
                        ),
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
                  const SizedBox(height: 20),
                  const Padding(
                    padding: EdgeInsets.only(left: 30, right: 30, bottom: 40),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 65),
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
                          ],
                        ),
                        Column(
                          children: [
                            SizedBox(height: 60),
                            Image(
                              image: AssetImage("assets/icons/ic_tg.png"),
                              height: 34,
                              width: 66,
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
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            SizedBox(height: 65),
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
                          ],
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Container(
                      width: 342,
                      height: 500,
                      decoration: BoxDecoration(
                          color: ResColor.white,
                          borderRadius: BorderRadius.circular(30)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(height: 10),
                          Padding(
                            padding: const EdgeInsets.only(left: 54),
                            child: Row(
                              children: [
                                const Stack(
                                  children: [
                                    ImageWidget(
                                      image:
                                          "assets/images/imge_carta_backraund.png",
                                      height: 112,
                                      width: 233,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                          left: 41, right: 41, top: 17),
                                      child: ImageWidget(
                                        image: "assets/images/image_logo.png",
                                        height: 32,
                                        width: 150,
                                      ),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(left: 15, bottom: 65),
                                  child: GestureDetector(
                                    onTap: () {
                                      Navigator.of(context).push(
                                        MaterialPageRoute(
                                          builder: (_) => const MenuPages(),
                                        ),
                                      );
                                    },
                                    child: const ImageWidget(
                                      image: "assets/icons/ic_scrin.png",
                                      height: 19,
                                      width: 19,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(left: 26),
                            child: TextWidget(
                              text: "Ref. 12344",
                              size: 22,
                              fontWeight: FontWeight.w400,
                              fontFamily: " OutfitRegular",
                              color: ResColor.minTextColor,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 26, right: 26),
                            child: Container(
                              height: 1,
                              width: 290,
                              color: const Color.fromRGBO(0, 0, 0, 0.3),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(left: 26, right: 26),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(height: 36),
                                    TextWidget(
                                      text: "Flight Date",
                                      size: 12,
                                      fontWeight: FontWeight.w500,
                                      fontFamily: "OverpassMedium",
                                      color: ResColor.minTextColor,
                                    ),
                                    SizedBox(height: 9),
                                    TextWidget(
                                      text: "May 11, 2023",
                                      size: 12,
                                      fontWeight: FontWeight.w600,
                                      fontFamily: "OverpassSemiBold",
                                      color: ResColor.minTextColor,
                                    ),
                                    SizedBox(height: 31),
                                    TextWidget(
                                      text: "Boarding time",
                                      size: 12,
                                      fontWeight: FontWeight.w500,
                                      fontFamily: "OverpassMedium",
                                      color: ResColor.minTextColor,
                                    ),
                                    SizedBox(height: 9),
                                    TextWidget(
                                      text: "8:00 am EST",
                                      size: 12,
                                      fontWeight: FontWeight.w600,
                                      fontFamily: "OverpassSemiBold",
                                      color: ResColor.minTextColor,
                                    ),
                                    SizedBox(height: 35),
                                  ],
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    SizedBox(height: 36),
                                    TextWidget(
                                      text: "Zone",
                                      size: 12,
                                      fontWeight: FontWeight.w500,
                                      fontFamily: "OverpassMedium",
                                      color: ResColor.minTextColor,
                                    ),
                                    SizedBox(height: 9),
                                    TextWidget(
                                      text: "A",
                                      size: 12,
                                      fontWeight: FontWeight.w600,
                                      fontFamily: "OverpassSemiBold",
                                      color: ResColor.minTextColor,
                                    ),
                                    SizedBox(height: 31),
                                    TextWidget(
                                      text: "Seat",
                                      size: 12,
                                      fontWeight: FontWeight.w500,
                                      fontFamily: "OverpassMedium",
                                      color: ResColor.minTextColor,
                                    ),
                                    SizedBox(height: 9),
                                    TextWidget(
                                      text: "34A",
                                      size: 12,
                                      fontWeight: FontWeight.w600,
                                      fontFamily: "OverpassSemiBold",
                                      color: ResColor.minTextColor,
                                    ),
                                    SizedBox(height: 35),
                                  ],
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    SizedBox(height: 36),
                                    TextWidget(
                                      text: "Flight Number",
                                      size: 12,
                                      fontWeight: FontWeight.w500,
                                      fontFamily: "OverpassMedium",
                                      color: ResColor.minTextColor,
                                    ),
                                    SizedBox(height: 9),
                                    TextWidget(
                                      text: "F12234",
                                      size: 12,
                                      fontWeight: FontWeight.w600,
                                      fontFamily: "OverpassSemiBold",
                                      color: ResColor.minTextColor,
                                    ),
                                    SizedBox(height: 31),
                                    TextWidget(
                                      text: "Class",
                                      size: 12,
                                      fontWeight: FontWeight.w500,
                                      fontFamily: "OverpassMedium",
                                      color: ResColor.minTextColor,
                                    ),
                                    SizedBox(height: 9),
                                    TextWidget(
                                      text: "Business",
                                      size: 12,
                                      fontWeight: FontWeight.w600,
                                      fontFamily: "OverpassSemiBold",
                                      color: ResColor.minTextColor,
                                    ),
                                    SizedBox(height: 35),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Align(
                            alignment: const Alignment(0, .5),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  width: 20,
                                  height: 25,
                                  decoration: const BoxDecoration(
                                    color: ResColor.backgroundColor,
                                    borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(20),
                                      bottomRight: Radius.circular(20),
                                    ),
                                  ),
                                ),
                                Image.asset(
                                  'assets/images/imge_line.png',
                                  width: 302,
                                ),
                                Container(
                                  width: 20,
                                  height: 25,
                                  decoration: const BoxDecoration(
                                    color: ResColor.backgroundColor,
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(20),
                                      bottomLeft: Radius.circular(20),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(left: 107),
                            child: TextWidget(
                              text: "Boarding pass",
                              size: 20,
                              fontWeight: FontWeight.w600,
                              fontFamily: "Outfit",
                              color: ResColor.minTextColor,
                            ),
                          ),
                          const SizedBox(height: 23),
                          const Padding(
                            padding: EdgeInsets.only(left: 41, right: 41),
                            child: ImageWidget(
                              image: "assets/images/imge_cod.png",
                              height: 72,
                              width: 260,
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
