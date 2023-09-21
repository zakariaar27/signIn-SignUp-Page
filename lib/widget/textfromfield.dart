import 'package:flutter/material.dart';

class KTextFromField extends StatelessWidget {
  const KTextFromField(
      {super.key,
      this.isPass = false,
      this.iconData,
      this.hinttext,
      this.suffixIcon});
  final bool isPass;
  final String? hinttext;
  final IconData? iconData;
  final dynamic suffixIcon;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: isPass,
      validator: (value) {
        if (value == "" || value == null) {
          return "Invalid your data";
        }
        return "";
      },
      decoration: InputDecoration(
        hintText: hinttext,
        prefixIcon: iconData == null ? Icon(Icons.person) : Icon(iconData),
        suffixIcon: suffixIcon,
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(40),
            borderSide: BorderSide(color: Colors.grey, width: 2)),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(40),
            borderSide:
                BorderSide(color: Color.fromRGBO(39, 97, 255, 1), width: 2)),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(40),
            borderSide: BorderSide(color: Colors.grey, width: 2)),
        errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(40),
            borderSide: BorderSide(color: Colors.red, width: 2)),
      ),
    );
  }
}
