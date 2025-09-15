import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CheckTextField extends StatelessWidget {
  const CheckTextField({super.key, required this.controller});

  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;
    return Container(
      height: screenHeight * (48 / 812),
      width: screenWidth * (335 / 375),
      decoration: BoxDecoration(
        color: Color.fromRGBO(247, 247, 249, 1),
        borderRadius: BorderRadius.circular(14),
      ),
      child: Center(
        child: TextFormField(
          style: TextStyle(
            fontFamily: 'Poppins',
            fontSize: 14,
            fontWeight: FontWeight.w500,
            height: 16 / 14,
            letterSpacing: 0,
          ),
          decoration: InputDecoration(
            border: InputBorder.none,
            suffixIcon: Icon(
              Icons.check,
              color: Color.fromRGBO(72, 178, 231, 1),
            ),
            contentPadding: EdgeInsets.only(
              top: 16,
              right: 57,
              bottom: 16,
              left: 14,
            ),
          ),
          controller: controller,
        ),
      ),
    );
  }
}
