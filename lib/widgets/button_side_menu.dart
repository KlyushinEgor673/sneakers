import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ButtonSideMenu extends StatelessWidget {
  const ButtonSideMenu({
    super.key,
    required this.path,
    required this.text,
    required this.where,
    required this.isNotification,
  });

  final String path;
  final String text;
  final String where;
  final bool isNotification;

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;
    return GestureDetector(
      child: SizedBox(
        height: screenHeight * (24 / 812),
        width: screenWidth * (294.75 / 375),
        child: Stack(
          children: [
            Positioned(
              child: SvgPicture.asset(
                path,
                height: screenHeight * (24 / 812),
                width: screenWidth * (24 / 375),
                color: Colors.white,
              ),
            ),
            if (isNotification)
              Positioned(
                left: screenWidth * (14 / 375),
                child: Container(
                  width: screenWidth * (8 / 375),
                  height: screenHeight * (8 / 812),
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(248, 114, 101, 1),
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
              ),
            Positioned(
              left: screenWidth * (46 / 375),
              top: 0,
              bottom: 0,
              child: Center(
                child: Text(
                  text,
                  style: TextStyle(
                    fontFamily: 'Raleway',
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                    height: 20 / 16,
                    letterSpacing: 0,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      onTap: () {
        Navigator.pushNamed(context, where);
      },
    );
  }
}
