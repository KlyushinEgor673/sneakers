import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sneakers/widgets/button_side_menu.dart';

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
            child: ButtonSideMenu(
              path: 'icons/Profile.svg',
              text: 'Профиль',
              where: '/profile',
              isNotification: false,
            ),
          ),
          Positioned(
            top: screenHeight * (321 / 812),
            left: screenWidth * (20 / 375),
            child: ButtonSideMenu(
              path: 'icons/bag-2.svg',
              text: 'Корзина',
              where: '/my_cart',
              isNotification: false,
            ),
          ),
          Positioned(
            top: screenHeight * (375 / 812),
            left: screenWidth * (20 / 375),
            child: ButtonSideMenu(
              path: 'icons/Favorite.svg',
              text: 'Избраное',
              where: '/favorite',
              isNotification: false,
            ),
          ),
          Positioned(
            top: screenHeight * (425 / 812),
            left: screenWidth * (20 / 375),
            child: ButtonSideMenu(
              path: 'icons/Orders.svg',
              text: 'Заказы',
              where: '/orders',
              isNotification: false,
            ),
          ),
          Positioned(
            top: screenHeight * (478 / 812),
            left: screenWidth * (20 / 375),
            child: ButtonSideMenu(
              path: 'icons/Notification.svg',
              text: 'Уведомления',
              where: '/notification',
              isNotification: true,
            ),
          ),
          Positioned(
            top: screenHeight * (533 / 812),
            left: screenWidth * (20 / 375),
            child: ButtonSideMenu(
              path: 'icons/Settings.svg',
              text: 'Настройки',
              where: '/',
              isNotification: false,
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
            top: screenHeight * (625 / 812),
            left: screenWidth * (20 / 375),
            child: GestureDetector(
              child: SizedBox(
                width: screenWidth * (90 / 375),
                child: Stack(
                  children: [
                    Positioned(
                      child: SvgPicture.asset(
                        'icons/Logout.svg',
                        height: screenHeight * (24 / 812),
                        width: screenWidth * (24 / 375),
                        color: Colors.white,
                      ),
                    ),
                    Positioned(
                      left: screenWidth * (43 / 375),
                      top: 0,
                      bottom: 0,
                      child: Center(
                        child: Text(
                          'Выйти',
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
                Navigator.pushNamed(context, '/sign_in');
              },
            ),
          ),
          Positioned(
            top: screenHeight * (97 / 812),
            left: screenWidth * (241 / 375),
            child: Container(
              width: screenWidth * (278.19 / 375),
              height: screenHeight * (602.59 / 812),
              child: Transform.rotate(
                angle: -3.43 * (pi / 180),
                child: ClipRRect(
                  child: Image.asset('images/Home.jpg', fit: BoxFit.cover),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(25),
                    topLeft: Radius.circular(25),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
