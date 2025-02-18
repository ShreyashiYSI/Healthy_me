import 'package:flutter/material.dart';

class CustomImage extends StatelessWidget {
  final double height; // Accept height as a parameter

  const CustomImage({Key? key, required this.height}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/images/welcome_image.png',
      height: height,
    );
  }
}
