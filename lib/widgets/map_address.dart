import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MapAddress extends StatelessWidget {
  const MapAddress({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;
    return Stack(
      children: [
        ClipRRect(
          child: Image.asset(
            'images/map.png',
            width: screenWidth * (295 / 375),
            height: screenHeight * (101 / 812),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.circular(16),
        ),
        Container(
          width: screenWidth * (295 / 375),
          height: screenHeight * (101 / 812),
          decoration: BoxDecoration(
            color: Color.fromRGBO(0, 0, 0, 0.33),
            borderRadius: BorderRadius.circular(16),
          ),
        ),
        Positioned(
          top: screenHeight * (46 / 812),
          left: 0,
          right: 0,
          child: Center(
            child: Container(
              width: screenWidth * (36 / 375),
              height: screenHeight * (36 / 812),
              decoration: BoxDecoration(
                color: Color.fromRGBO(72, 178, 231, 1),
                borderRadius: BorderRadius.circular(30),
                boxShadow: [
                  BoxShadow(
                    color: Color.fromRGBO(91, 158, 225, 0.5),
                    offset: Offset(0, 10),
                    blurRadius: 24,
                    spreadRadius: 0
                  )
                ]
              ),
              child: Center(
                child: SvgPicture.asset(
                  'icons/Marker.svg',
                  height: screenHeight * (20 / 812),
                  width: screenWidth * (20 / 375),
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        Positioned(
          top: screenHeight * (19 / 812),
          left: 0,
          right: 0,
          child: Center(
            child: Text('Посмотреть на карте',  style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w700,
              fontSize: 20,
              height: 1,
              letterSpacing: 0
            ),),
          ),
        ),
      ],
    );
  }
}
