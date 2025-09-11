import 'dart:math';

import 'package:flutter/material.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Color.fromRGBO(72, 178, 231, 1),
      body: Stack(
        children: [
          Positioned(
            top: screenHeight * (78 / 812),
            left: screenWidth * (36 / 375),
            child: ClipRRect(
              child: Image.asset(
                'images/person.jpg',
                width: screenWidth * (96 / 375),
                height: screenHeight * (96 / 812),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(100),
            ),
          ),
          Positioned(
            top: screenHeight * (189 / 812),
            left: screenWidth * (35 / 375),
            child: Text(
              'Эмануэль Кверти',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w700,
                fontSize: 20,
                height: 1,
                letterSpacing: 0,
                fontFamily: 'Raleway',
              ),
            ),
          ),
          Positioned(
            top: screenHeight * (267 / 812),
            left: screenWidth * (20 / 375),
            child: Container(
              height: screenHeight * (24 / 812),
              width: screenWidth * (294.75 / 375),
              color: Colors.red,
            ),
          ),
          Positioned(
            top: screenHeight * (321 / 812),
            left: screenWidth * (20 / 375),
            child: Container(
              height: screenHeight * (24 / 812),
              width: screenWidth * (294.75 / 375),
              color: Colors.red,
            ),
          ),
          Positioned(
            top: screenHeight * (375 / 812),
            left: screenWidth * (20 / 375),
            child: Container(
              height: screenHeight * (24 / 812),
              width: screenWidth * (294.75 / 375),
              color: Colors.red,
            ),
          ),
          Positioned(
            top: screenHeight * (425 / 812),
            left: screenWidth * (20 / 375),
            child: Container(
              height: screenHeight * (24 / 812),
              width: screenWidth * (294.75 / 375),
              color: Colors.red,
            ),
          ),
          Positioned(
            top: screenHeight * (478 / 812),
            left: screenWidth * (20 / 375),
            child: Container(
              height: screenHeight * (24 / 812),
              width: screenWidth * (294.75 / 375),
              color: Colors.red,
            ),
          ),
          Positioned(
            top: screenHeight * (533 / 812),
            left: screenWidth * (20 / 375),
            child: Container(
              height: screenHeight * (24 / 812),
              width: screenWidth * (294.75 / 375),
              color: Colors.red,
            ),
          ),
          Positioned(
            left: screenWidth * (20 / 375),
            top: screenHeight * (595 / 812),
            child: Container(
              width: screenWidth * (308 / 375),
              height: screenHeight * (1 / 812),
              decoration: BoxDecoration(
                color: Color.fromRGBO(247, 247, 249, 0.23),
                borderRadius: BorderRadius.circular(50),
              ),
            ),
          ),

          Positioned(
            top: screenHeight * (97 / 812),
            left: screenWidth * (241 / 375),
            child: Container(
              // color: Colors.green,
              width: screenWidth * (278.19 / 375),
              height: screenHeight * (602.59 / 812),
              child: Transform.rotate(
                angle: -3.43 * (pi / 180),
                child: ClipRRect(
                  child: Image.asset('images/Home.jpg', fit: BoxFit.cover),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(25),
                    topLeft: Radius.circular(25)
                  ),
                ),
              ),
            ),
            // Image.asset(
            //   'images/Home.jpg',
            //   width: screenWidth * (278.19),
            //   height: screenHeight * (602.59 / 375),
            // ),
          ),
        ],
      ),
    );
  }
}
