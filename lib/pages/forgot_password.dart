import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sneakers/widgets/auth_btn.dart';
import 'package:sneakers/widgets/auth_text_field.dart';
import 'package:sneakers/widgets/back.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Positioned(
            top: screenHeight * (66 / 812),
            left: screenWidth * (20 / 375),
            child: Back(color: Color.fromRGBO(247, 247, 249, 1)),
          ),
          Positioned(
            top: screenHeight * (130 / 812),
            left: 0,
            right: 0,
            child: Center(
              child: Text(
                'Забыл Пароль',
                style: TextStyle(
                  fontSize: 32,
                  height: 1,
                  fontStyle: FontStyle.italic,
                  letterSpacing: 0,
                  fontFamily: 'New Peninim MT',
                ),
              ),
            ),
          ),
          Positioned(
            top: screenHeight * (176 / 812),
            left: 0,
            right: 0,
            child: Center(
              child: SizedBox(
                width: 335,
                // height: 46,
                child: Text(
                  'Введите Cвою Учетную Запись Для Сброса',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                    height: 1.5,
                    letterSpacing: 0,
                    fontStyle: FontStyle.italic,
                    fontFamily: 'New Peninim MT',
                    color: Color.fromRGBO(112, 123, 129, 1),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: screenHeight * (264 / 812),
            left: screenWidth * (20 / 375),
            child: AuthTextField(isPwd: false),
          ),
          Positioned(
            top: screenHeight * (352 / 812),
            left: screenWidth * (20 / 375),
            child: AuthBtn(
              radius: 13,
              onPressed: () async {
                await showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return Stack(
                      children: [
                        BackdropFilter(
                          filter: ImageFilter.blur(sigmaX: 4, sigmaY: 4),
                          child: Container(
                            height: screenHeight,
                            width: screenWidth,
                            decoration: BoxDecoration(
                              color: Color.fromRGBO(27, 30, 40, 0.2),
                            ),
                          ),
                        ),
                        Positioned(
                          top: screenHeight * (295 / 812),
                          left: screenWidth * (20 / 375),
                          child: Container(
                            width: screenWidth * (335 / 375),
                            height: screenHeight * (196 / 812),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(16),
                            ),
                            child: Stack(
                              children: [
                                Positioned(
                                  top: screenHeight * (30 / 812),
                                  left: screenWidth * (146 / 375),
                                  child: Container(
                                    height: screenHeight * (44 / 812),
                                    width: screenWidth * (44 / 375),
                                    decoration: BoxDecoration(
                                      color: Color.fromRGBO(72, 178, 231, 1),
                                      borderRadius: BorderRadius.circular(50),
                                    ),
                                    child: Center(
                                      child: SizedBox(
                                        height: screenHeight * (24 / 812),
                                        width: screenWidth * (24 / 375),
                                        child: SvgPicture.asset(
                                          'icons/Email-Otp.svg',
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  top: screenHeight * (98 / 812),
                                  left: 0,
                                  right: 0,
                                  child: Text(
                                    'Проверьте Ваш Email',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16,
                                      height: 20 / 16,
                                      letterSpacing: 0,
                                      fontWeight: FontWeight.w700,
                                      fontFamily: 'Raleway',
                                      decoration: TextDecoration.none,
                                    ),
                                  ),
                                ),
                                Positioned(
                                  top: screenHeight * (126 / 812),
                                  left: 0,
                                  right: 0,
                                  child: Center(
                                    child: SizedBox(
                                      width: 315,
                                      child: Text(
                                        'Мы Отправили Код Восстановления Пароля '
                                            'На Вашу Электронную Почту.',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w400,
                                          fontSize: 16,
                                          height: 20 / 16,
                                          letterSpacing: 0,
                                          color: Color.fromRGBO(112, 123, 129, 1),
                                          decoration: TextDecoration.none,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    );
                  },
                );
                Navigator.pushNamed(context, '/verification');
              },
              text: 'Отправить',
            ),
          ),
        ],
      ),
    );
  }
}
