import 'package:flutter/material.dart';
import '../colors/colors.dart';
import '../widget/image_widget.dart';
import '../widget/text_widget.dart';

class MenuPages extends StatefulWidget {
  const MenuPages({Key? key}) : super(key: key);

  @override
  State<MenuPages> createState() => _MenuPagesState();
}

class _MenuPagesState extends State<MenuPages> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: ResColor.backgroundColor,
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 60),
            child: Container(
              width: width * .9,
              height: 710,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: ResColor.white),
              child: Column(
                children: [
                  RotatedBox(
                    quarterTurns: 1,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const SizedBox(height: 13),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 13, left: 32),
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.of(context).pop();
                                },
                                child: const ImageWidget(
                                  image: "assets/icons/ic_x.png",
                                  height: 20,
                                  width: 20,
                                ),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(left: 132, top: 13),
                              child: ImageWidget(
                                image: "assets/images/image_logo.png",
                                height: 44,
                                width: 210,
                              ),
                            ),
                          ],
                        ),
                        Stack(
                          children: [
                            const ImageWidget(
                              image: "assets/images/imge_carta_backraund.png",
                              height: 300,
                              width: 550,
                            ),
                            const Padding(
                              padding: EdgeInsets.only(left: 60, top: 25),
                              child: TextWidget(
                                text: "Ref. 12344",
                                size: 24,
                                fontWeight: FontWeight.w400,
                                fontFamily: " OutfitRegular",
                                color: ResColor.minTextColor,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 60, top: 56),
                              child: Container(
                                height: 2,
                                width: 455,
                                color: const Color.fromRGBO(0, 0, 0, 0.3),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(left: 60, right: 60),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(height: 100),
                                      TextWidget(
                                        text: "Flight Date",
                                        size: 14,
                                        fontWeight: FontWeight.w500,
                                        fontFamily: "OverpassMedium",
                                        color: ResColor.minTextColor,
                                      ),
                                      SizedBox(height: 9),
                                      TextWidget(
                                        text: "May 11, 2023",
                                        size: 14,
                                        fontWeight: FontWeight.w600,
                                        fontFamily: "OverpassSemiBold",
                                        color: ResColor.minTextColor,
                                      ),
                                      SizedBox(height: 31),
                                      TextWidget(
                                        text: "Boarding time",
                                        size: 14,
                                        fontWeight: FontWeight.w500,
                                        fontFamily: "OverpassMedium",
                                        color: ResColor.minTextColor,
                                      ),
                                      SizedBox(height: 9),
                                      TextWidget(
                                        text: "8:00 am EST",
                                        size: 14,
                                        fontWeight: FontWeight.w600,
                                        fontFamily: "OverpassSemiBold",
                                        color: ResColor.minTextColor,
                                      ),
                                      SizedBox(height: 35),
                                    ],
                                  ),
                                  SizedBox(width: 100),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      SizedBox(height: 100),
                                      TextWidget(
                                        text: "Zone",
                                        size: 14,
                                        fontWeight: FontWeight.w500,
                                        fontFamily: "OverpassMedium",
                                        color: ResColor.minTextColor,
                                      ),
                                      SizedBox(height: 9),
                                      TextWidget(
                                        text: "A",
                                        size: 14,
                                        fontWeight: FontWeight.w600,
                                        fontFamily: "OverpassSemiBold",
                                        color: ResColor.minTextColor,
                                      ),
                                      SizedBox(height: 31),
                                      TextWidget(
                                        text: "Seat",
                                        size: 14,
                                        fontWeight: FontWeight.w500,
                                        fontFamily: "OverpassMedium",
                                        color: ResColor.minTextColor,
                                      ),
                                      SizedBox(height: 9),
                                      TextWidget(
                                        text: "34A",
                                        size: 14,
                                        fontWeight: FontWeight.w600,
                                        fontFamily: "OverpassSemiBold",
                                        color: ResColor.minTextColor,
                                      ),
                                      SizedBox(height: 35),
                                    ],
                                  ),
                                  SizedBox(width: 100),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      SizedBox(height: 100),
                                      TextWidget(
                                        text: "Flight Number",
                                        size: 14,
                                        fontWeight: FontWeight.w500,
                                        fontFamily: "OverpassMedium",
                                        color: ResColor.minTextColor,
                                      ),
                                      SizedBox(height: 9),
                                      TextWidget(
                                        text: "F12234",
                                        size: 14,
                                        fontWeight: FontWeight.w600,
                                        fontFamily: "OverpassSemiBold",
                                        color: ResColor.minTextColor,
                                      ),
                                      SizedBox(height: 31),
                                      TextWidget(
                                        text: "Class",
                                        size: 14,
                                        fontWeight: FontWeight.w500,
                                        fontFamily: "OverpassMedium",
                                        color: ResColor.minTextColor,
                                      ),
                                      SizedBox(height: 9),
                                      TextWidget(
                                        text: "Business",
                                        size: 14,
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
                          width: 330,
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
                  const SizedBox(height: 36),
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
          ),
        ),
      ),
    );
  }
}
