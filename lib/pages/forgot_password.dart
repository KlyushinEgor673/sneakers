import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sneakers/app_text_styles.dart';
import 'package:sneakers/widgets/auth_btn.dart';
import 'package:sneakers/widgets/auth_text_field.dart';
import 'package:sneakers/widgets/back.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  bool _isClick = false;

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
                style: AppTextStyles.title,
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
                height: 48,
                child: Text(
                  'Введите Cвою Учетную Запись Для Сброса',
                  textAlign: TextAlign.center,
                  style: AppTextStyles.subtitle,
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
                setState(() {
                  _isClick = true;
                });
                await Future.delayed(Duration(seconds: 5));
                Navigator.pushNamed(context, '/verification');
              },
              text: 'Отправить',
            ),
          ),
          if (_isClick)
            BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 4, sigmaY: 4),
              child: Container(
                width: screenWidth,
                height: screenHeight,
                color: Color.fromRGBO(27, 30, 40, 0.2),
              ),
            ),
          if (_isClick)
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
                      left: 0,
                      right: 0,
                      child: Center(
                        child: Container(
                          width: screenWidth * (44 / 375),
                          height: screenHeight * (44 / 812),
                          decoration: BoxDecoration(
                            color: Color.fromRGBO(72, 178, 231, 1),
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: Center(
                            child: SvgPicture.asset(
                              'icons/Email-Otp.svg',
                              height: screenHeight * (24 / 812),
                              width: screenWidth * (24 / 375),
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
                      child: Center(child: Text('Проверьте Ваш Email', style: TextStyle(
                        fontFamily: 'Raleway',
                        fontWeight: FontWeight.w700,
                        fontSize: 16,
                        height: 20 / 16,
                        letterSpacing: 0
                      ),)),
                    ),
                    Positioned(
                      top: screenHeight * (126 / 812),
                      left: 0,
                      right: 0,
                      child: Center(
                        child: SizedBox(
                          width: 315,
                          child: Text(
                            textAlign: TextAlign.center,
                            'Мы Отправили Код Восстановления Пароля На Вашу Электронную Почту.',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 16,
                              height: 20 / 16,
                              letterSpacing: 0,
                              color: Color.fromRGBO(112, 123, 129, 1)
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
      ),
    );
  }
}
