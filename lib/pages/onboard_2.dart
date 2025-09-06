import 'dart:math';

import 'package:flutter/material.dart';
import 'package:sneakers/widgets/next_btn.dart';
import 'package:sneakers/widgets/blue_line.dart';
import 'package:sneakers/widgets/white_line.dart';

class Onboard2 extends StatelessWidget {
  const Onboard2({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;
    print(screenHeight);
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color.fromRGBO(72, 178, 231, 1),
              Color.fromRGBO(0, 118, 177, 1),
            ],
          ),
        ),
        child: Stack(
          children: [
            Positioned(
              top: screenHeight * (78.85 / 812),
              child: Transform.rotate(
                angle: -20 * (pi / 180),
                child: Transform.scale(
                  child: SizedBox(
                    width: screenWidth * (355 / 411.4),
                    height: screenHeight * (350 / 923.4),
                    child: Image.asset('images/Spring_prev_ui.png'),
                  ),
                  scaleX: -1,
                ),
              ),
            ),
            Positioned(
              top: screenHeight * (339 / 812),
              left: screenWidth * (52 / 375),
              child: ClipOval(
                child: Container(
                  width: screenWidth * (281 / 375),
                  height: screenHeight * (17 / 812),
                  decoration: BoxDecoration(
                    // color: Colors.transparent,
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromRGBO(16, 16, 16, 0.3),
                        blurRadius: 9.94,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              top: screenHeight * (442 / 812),
              right: 0,
              left: 0,
              child: Align(
                child: SizedBox(
                  width: 315,
                  child: Text(
                    'Начнем путеществие',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: 'New Peninim MT',
                      fontStyle: FontStyle.italic,
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                      height: 1.3,
                      fontSize: 34,
                      letterSpacing: 0,
                    ),
                  ),
                ),
                alignment: Alignment.center,
              ),
            ),
            Positioned(
              top: screenHeight * (543 / 812),
              left: 0,
              right: 0,
              child: Center(
                child: SizedBox(
                  width: 315,
                  child: Text(
                    'Умная, великолепная и модная коллекция Изучите сейчас',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color.fromRGBO(216, 216, 216, 1),
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      fontStyle: FontStyle.italic,
                      height: 1.5,
                      fontFamily: 'New Peninim MT',
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              top: screenHeight * (631 / 812),
              left: 0,
              right: 0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  BlueLine(),
                  SizedBox(width: screenWidth * (12 / 375)),
                  WhiteLine(),
                  SizedBox(width: screenWidth * (12 / 375)),
                  BlueLine(),
                ],
              ),
            ),
            Positioned(
              top: screenHeight * (726 / 812),
              right: 0,
              left: 0,
              child: Align(
                child: NextBtn(
                  text: 'Далее',
                  onClick: () {
                    Navigator.pushNamed(context, '/onboard_3');
                  },
                ),
                alignment: Alignment.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
