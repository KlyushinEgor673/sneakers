import 'package:flutter/material.dart';
import 'package:sneakers/app_text_styles.dart';
import 'package:sneakers/widgets/back.dart';
import 'package:sneakers/widgets/card_order.dart';

class Orders extends StatelessWidget {
  const Orders({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Color.fromRGBO(247, 247, 249, 1),
      body: Stack(
        children: [
          Positioned(
            top: screenHeight * (48 / 812),
            left: screenWidth * (20 / 375),
            child: Back(color: Colors.white),
          ),
          Positioned(
            top: screenHeight * (60 / 812),
            left: 0,
            right: 0,
            child: Center(child: Text('Заказы', style: AppTextStyles.headline)),
          ),
          Positioned(
            top: screenHeight * (108 / 812),
            left: screenWidth * (20 / 375),
            child: SizedBox(
              width: screenWidth * (335 / 375),
              height: screenHeight - (screenHeight * (108 / 812)),
              child: ListView(
                children: [
                  Text(
                    'Недавний',
                    style: TextStyle(
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                      height: 22 / 18,
                      letterSpacing: 0,
                    ),
                  ),
                  CardOrder(marginTop: 16, time: '7 мин назад'),
                  CardOrder(marginTop: 12, time: '7 мин назад'),
                  Padding(
                    padding: EdgeInsets.only(top: 24),
                    child: Text(
                      'Вчера',
                      style: TextStyle(
                        fontFamily: 'Raleway',
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                        height: 22 / 18,
                        letterSpacing: 0,
                      ),
                    ),
                  ),
                  CardOrder(marginTop: 28, time: '10:23'),
                  CardOrder(marginTop: 12, time: '10:23'),
                  CardOrder(marginTop: 12, time: '10:23'),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
