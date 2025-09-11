import 'package:flutter/material.dart';

class PoleOtp extends StatelessWidget {
  const PoleOtp({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;
    return Container(
      width: screenWidth * (46 / 375),
      height: screenHeight * (99 / 812),
      decoration: BoxDecoration(
        color: Color.fromRGBO(247, 247, 249, 1),
        borderRadius: BorderRadius.circular(12)
      ),
    );
  }
}
