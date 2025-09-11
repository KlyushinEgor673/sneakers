import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Hamburger extends StatelessWidget {
  const Hamburger({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;
    return GestureDetector(
      child: SvgPicture.asset(
        'icons/Hamburger.svg',
        height: screenHeight * (18 / 812),
        width: screenWidth * (25.71 / 375),
      ),
      onTap: () {
        Navigator.pushNamed(context, '/side_menu');
      },
    );
  }
}
