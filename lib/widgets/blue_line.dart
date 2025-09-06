import 'package:flutter/material.dart';

class BlueLine extends StatelessWidget {
  const BlueLine({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;
    return Container(
      width: screenHeight * (28 / 812),
      height: screenWidth * (5 / 375),
      decoration: BoxDecoration(
        color: Color.fromRGBO(43, 107, 139, 1),
        borderRadius: BorderRadius.circular(12)
      ),
    );
  }
}
