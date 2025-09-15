import 'package:flutter/material.dart';
import 'package:sneakers/app_text_styles.dart';
import 'package:sneakers/widgets/next_btn.dart';
import 'package:sneakers/widgets/blue_line.dart';
import 'package:sneakers/widgets/white_line.dart';
import 'dart:math';

class Onboard3 extends StatelessWidget {
  const Onboard3({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;
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
                    child: Image.asset('images/image.png'),
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
              child: Center(
                child: SizedBox(
                  width: 315,
                  child: Text(
                    'У Вас Есть Сила, Чтобы',
                    textAlign: TextAlign.center,
                    style: AppTextStyles.titleOnboard,
                  ),
                ),
              ),
            ),
            Positioned(
              top: screenHeight * (543 / 812),
              right: 0,
              left: 0,
              child: Center(
                child: SizedBox(
                  width: 322,
                  child: Text(
                    'В вашей комнате много красивых и привлекательных растений',
                    textAlign: TextAlign.center,
                    style: AppTextStyles.subtitleOnboard,
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
                  SizedBox(width: 12),
                  BlueLine(),
                  SizedBox(width: 12),
                  WhiteLine(),
                ],
              ),
            ),
            Positioned(
              top: screenHeight * (726 / 812),
              right: 0,
              left: 0,
              child: Center(
                child: NextBtn(
                  text: 'Далее',
                  onClick: () {
                    Navigator.pushNamed(context, '/home');
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
