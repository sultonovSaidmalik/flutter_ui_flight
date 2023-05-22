import 'package:flutter/material.dart';
class ImageWidget extends StatelessWidget {
  final String image;
  final double height;
  final double width;

  const ImageWidget({
    Key? key,
    required this.image,
    required this.height,
    required this.width,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image(
      image: AssetImage(image),
      height: height,
      width: width,
    );
  }
}
