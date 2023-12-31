import 'package:flutter/material.dart';

class KImage {
  static const main = "assets/img.jpg";
  static const signInImg = "assets/img1.png";
  static const signUpImg = "assets/img2.jpeg";
  static const slider1 = "assets/imgs1.jpg";
  static const slider2 = "assets/imgs2.jpeg";
  static const slider3 = "assets/imgs3.jpg";
  static const slider4 = "assets/imgs4.jpg";
  static const slider5 = "assets/imgs5.jpg";
}

// for first slider

class KSliderImg extends StatelessWidget {
  const KSliderImg({super.key, required this.assetImage});
  final String assetImage;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 130,
      width: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(assetImage),
        ),
      ),
    );
  }
}
