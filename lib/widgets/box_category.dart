import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BoxCategory extends StatelessWidget {
  const BoxCategory({
    super.key,
    required this.text,
    required this.color,
    required this.onTap,
  });

  final String text;
  final Color color;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return GestureDetector(
      child: Container(
        width: screenWidth * (108 / 375),
        height: screenHeight * (40 / 812),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Stack(
          children: [
            Positioned(
              top: screenHeight * (11 / 812),
              left: 0,
              right: 0,
              child: Center(
                child: Text(
                  text,
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 12,
                    height: 1,
                    letterSpacing: 1,
                    color: (color == Color.fromRGBO(72, 178, 231, 1)
                        ? Colors.white
                        : Colors.black),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      onTap: onTap,
    );
  }
}
