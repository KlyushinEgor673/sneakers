import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sneakers/widgets/auth_text_field.dart';
import 'package:sneakers/widgets/back.dart';
import 'package:sneakers/widgets/custom_navigator_bar.dart';
import 'package:sneakers/widgets/hamburger.dart';

class ProfileInAccount extends StatefulWidget {
  const ProfileInAccount({super.key});

  @override
  State<ProfileInAccount> createState() => _ProfileInAccountState();
}

class _ProfileInAccountState extends State<ProfileInAccount> {
  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Positioned(
            top: screenHeight * (63 / 812),
            left: screenWidth * (18 / 375),
            child: Center(
              child: Hamburger(),
            ),
          ),
          Positioned(
            top: screenHeight * (62 / 812),
            left: screenWidth * (152 / 375),
            child: Text(
              'Профиль',
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontFamily: 'Raleway',
                fontSize: 16,
                height: 1.25,
                letterSpacing: 0,
              ),
            ),
          ),
          Positioned(
            top: screenHeight * (60 / 812),
            right: screenWidth * (22 / 375),
            child: GestureDetector(
              child: Container(
                height: screenHeight * (25 / 812),
                width: screenWidth * (25 / 375),
                decoration: BoxDecoration(
                  color: Color.fromRGBO(72, 178, 231, 1),
                  borderRadius: BorderRadius.circular(100),
                ),
                child: Center(
                  child: SvgPicture.asset(
                    'icons/edit2.svg',
                    height: screenHeight * (7.81 / 812),
                    width: screenWidth * (8.33 / 375),
                  ),
                ),
              ),
              onTap: () {
                Navigator.pushNamed(context, '/edit_profile');
              },
            ),
          ),
          Positioned(
            top: screenHeight * (130 / 812),
            left: screenWidth * (140 / 375),
            child: ClipRRect(
              child: Image.asset(
                'images/person.jpg',
                height: screenHeight * (96 / 812),
                width: screenWidth * (96 / 375),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(100),
            ),
          ),
          Positioned(
            top: screenHeight * (234 / 812),
            left: 0,
            right: 0,
            child: Center(
              child: Text(
                'Emmanuel Oyiboke',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontFamily: 'Raleway',
                  fontSize: 20,
                  height: 1,
                ),
              ),
            ),
          ),
          Positioned(
            top: screenHeight * (292 / 812),
            left: screenWidth * (20 / 375),
            child: Container(
              width: screenWidth * (335 / 375),
              height: screenHeight * (66 / 812),
              decoration: BoxDecoration(
                color: Color.fromRGBO(247, 247, 249, 1),
                borderRadius: BorderRadius.circular(16),
              ),
              child: Stack(
                children: [
                  Positioned(
                    top: screenHeight * (8 / 812),
                    left: screenWidth * (8 / 375),
                    child: Container(
                      color: Colors.red,
                      height: screenHeight * (55 / 812),
                      width: screenWidth * (22 / 375),
                      child: Transform.rotate(
                        angle: 270 * (pi / 180),
                        child: Text('Открыть'),
                      ),
                    ),
                  ),
                  Positioned(
                    top: screenHeight * (8 / 812),
                    right: screenWidth * (8 / 375),
                    child: ClipRRect(
                      child: Image.asset(
                        'images/qr.jpg',
                        height: screenHeight * (50 / 812),
                        width: screenWidth * (297 / 375),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            left: screenWidth * (22 / 375),
            top: screenHeight * (378 / 812),
            child: SizedBox(
              width: screenWidth * (335 / 375),
              height: screenHeight * (384 / 812),
              child: ListView(
                children: [
                  Text(
                    'Имя',
                    style: TextStyle(
                      fontSize: 16,
                      height: 1,
                      letterSpacing: 0,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Raleway',
                    ),
                  ),
                  AuthTextField(isPwd: false),
                  Text(
                    'Имя',
                    style: TextStyle(
                      fontSize: 16,
                      height: 1,
                      letterSpacing: 0,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Raleway',
                    ),
                  ),
                  AuthTextField(isPwd: false),
                  Text(
                    'Имя',
                    style: TextStyle(
                      fontSize: 16,
                      height: 1,
                      letterSpacing: 0,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Raleway',
                    ),
                  ),
                  AuthTextField(isPwd: false),
                  Text(
                    'Имя',
                    style: TextStyle(
                      fontSize: 16,
                      height: 1,
                      letterSpacing: 0,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Raleway',
                    ),
                  ),
                  AuthTextField(isPwd: false),
                ],
              ),
            ),
          ),
          CustomNavigatorBar(id: 4),
        ],
      ),
    );
  }
}
