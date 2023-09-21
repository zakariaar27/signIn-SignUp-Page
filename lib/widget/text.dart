import 'package:flutter/material.dart';

class KText extends StatelessWidget {
  const KText({
    super.key,
    required this.signInData,
    this.fontSize = 16,
    this.fontweight = FontWeight.normal,
    this.color = Colors.black,
  });
  final String signInData;
  final double fontSize;
  final FontWeight fontweight;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Text(
      signInData,
      style: TextStyle(
        fontSize: fontSize,
        fontWeight: fontweight,
        color: color,
      ),
    );
  }
}
