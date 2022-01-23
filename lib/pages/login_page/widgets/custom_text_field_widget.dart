import 'package:flutter/material.dart';

class CustomTextFieldWidget extends StatelessWidget {
  const CustomTextFieldWidget({
    required this.hintText,
    Key? key,
    this.obscureText = false,
  }) : super(key: key);

  final String hintText;
  final bool obscureText;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 50,
      child: TextField(
        obscureText: obscureText,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: TextStyle(color: Color(0XFF767676)),
          filled: true,
          fillColor: Colors.white,
          contentPadding: EdgeInsets.fromLTRB(30, 20, 20, 20),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(25),
            borderSide: BorderSide(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
