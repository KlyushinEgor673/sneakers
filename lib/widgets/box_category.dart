import 'package:flutter/material.dart';

class BoxCategory extends StatelessWidget {
  const BoxCategory({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Container(
      width: screenWidth * (108 / 375),
      height: screenHeight * (40 / 812),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Stack(
        children: [
          Positioned(
            top: screenHeight * (11 / 812),
            // left: screenWidth * (43 / 375),
            left: 0,
            right: 0,
            child: Center(
              child: Text(
                text,
                style: TextStyle(
                  fontSize: 12,
                  height: 1,
                  letterSpacing: 1,
                  fontFamily: 'New Peninim MT',
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
