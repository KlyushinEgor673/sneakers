import 'package:flutter/material.dart';
import 'package:sneakers/widgets/blue_line.dart';
import 'package:sneakers/widgets/next_btn.dart';
import 'package:sneakers/widgets/white_line.dart';
import 'dart:math';

class Onboard1 extends StatelessWidget {
  const Onboard1({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;
    print(screenWidth);
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
              top: screenHeight * (70 / 812),
              left: 0,
              right: 0,
              child: Align(
                child: SizedBox(
                  width: 267,
                  child: Text(
                    'ДОБРО ПОЖАЛОВАТЬ',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.w900,
                      fontSize: 30,
                      height: 1,
                      letterSpacing: 0,
                      color: Colors.white
                    ),
                  ),
                ),
                alignment: Alignment.center,
              ),
            ),
            Positioned(
              top: screenHeight * (200 / 812),
              left: screenWidth * (-120 / 411.5),
              child: Transform.rotate(
                angle: -20.15 * (pi / 180),
                child: SizedBox(
                  width: screenWidth * (560.8 / 375),
                  height: screenHeight * (420.6 / 812),
                  child: Image.asset('images/Sneakers.png'),
                ),
              ),
            ),
            Positioned(
              top: screenHeight * (546 / 812),
              left: screenWidth * (43 / 375),
              child: ClipOval(
                  child: Container(
                    width: screenWidth * (205 / 375),
                    height: screenHeight * (11 / 812),
                    decoration: BoxDecoration(
                        color: Colors.transparent,
                        boxShadow: [
                            BoxShadow(
                              color: Color.fromRGBO(16, 16, 16, 0.3),
                              blurRadius: 9.94,
                            ),
                          ]
                    ),
                  ))
              // Container(
              //   width: ,
              //   height: ,
              //   decoration: BoxDecoration(
              //     borderRadius: BorderRadius.circular(300),
              //     color: Colors.transparent,
              //     ,
              //   ),
              // ),
            ),
            Positioned(
              top: screenHeight * (590 / 812),
              left: 0,
              right: 0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  WhiteLine(),
                  SizedBox(width: screenWidth * (12 / 375)),
                  BlueLine(),
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
                  text: 'Начать',
                  onClick: () {
                    Navigator.pushNamed(context, '/onboard_2');
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
