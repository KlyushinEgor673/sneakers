import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BagButton extends StatelessWidget {
  const BagButton({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;
    return SizedBox(
      height: screenHeight * (44 / 812),
      width: screenWidth * (44 / 375),
      child: Stack(
        children: [
          Container(
            height: screenHeight * (44 / 812),
            width: screenWidth * (44 / 375),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(40),
            ),
            child: Center(
              child: SvgPicture.asset(
                'icons/bag-2.svg',
                height: screenHeight * (24 / 812),
                width: screenWidth * (24 / 375),
                color: Colors.black,
              ),
            ),
          ),
          Positioned(
            top: screenHeight * (3 / 812),
            right: screenWidth * (2 / 375),
            child: Container(
              width: screenWidth * (8 / 375),
              height: screenHeight * (8 / 812),
              decoration: BoxDecoration(
                color: Color.fromRGBO(248, 114, 101, 1),
                borderRadius: BorderRadius.circular(50),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
