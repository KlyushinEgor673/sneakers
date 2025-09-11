import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sneakers/widgets/auth_btn.dart';
import 'package:sneakers/widgets/auth_text_field.dart';
import 'package:sneakers/widgets/back.dart';

class Register extends StatelessWidget {
  const Register({super.key});

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
            top: screenHeight * (121 / 812),
            left: screenWidth * (20 / 375),
            child: SizedBox(
              width: screenWidth * (335 / 375),
              height: screenHeight * (94 / 812),
              child: Stack(
                children: [
                  Positioned(
                    top: 0,
                    left: 0,
                    right: 0,
                    child: Center(child: Text('Регистрация')),
                  ),
                  Positioned(
                    bottom: 0,
                    left: 0,
                    right: 0,
                    child: Center(
                      child: SizedBox(
                        width: 315,
                        height: 48,
                        child: Text(
                          textAlign: TextAlign.center,
                          'Заполните Свои Данные '
                          'Или Продолжите Через Социальные Медиа',
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: screenHeight * (583 / 812),
            left: screenWidth * (20 / 375),
            child: AuthBtn(
              onPressed: () {},
              text: 'Зарегистрироватеься',
              radius: 13,
            ),
          ),
          Positioned(
            top: screenHeight * (245 / 812),
            left: screenWidth * (20 / 375),
            child: SizedBox(
              width: screenWidth * (335 / 375),
              height: screenHeight * (314 / 812),
              child: Stack(
                children: [
                  Text('Ваше имя'),
                  Positioned(
                    top: screenHeight * (32 / 812),
                    child: AuthTextField(isPwd: false),
                  ),
                  Positioned(
                    top: screenHeight * (92 / 812),
                    child: Text('Email'),
                  ),
                  Positioned(
                    top: screenHeight * (124 / 812),
                    child: AuthTextField(isPwd: false),
                  ),
                  Positioned(
                    top: screenHeight * (184 / 812),
                    child: Text('Пароль'),
                  ),
                  Positioned(
                    top: screenHeight * (216 / 812),
                    child: AuthTextField(isPwd: true),
                  ),
                  Positioned(
                    top: screenHeight * (276 / 812),
                    left: 0,
                    child: SizedBox(
                      width: screenWidth * (333 / 375),
                      height: screenHeight * (38 / 812),
                      child: Stack(
                        children: [
                          Positioned(
                            top: screenHeight * (10 / 812),
                            child: Container(
                              height: screenHeight * (18 / 812),
                              width: screenWidth * (18 / 375),
                              decoration: BoxDecoration(
                                color: Color.fromRGBO(247, 247, 249, 1),
                                borderRadius: BorderRadius.circular(6),
                              ),
                              child: Center(
                                child: SvgPicture.asset(
                                  'icons/Policy-Check.svg',
                                  height: screenHeight * (10 / 812),
                                  width: screenWidth * (10 / 375),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            left: screenWidth * (30 / 375),
                            top: 0,
                            bottom: 0,
                            child: Center(
                              child: SizedBox(
                                width: screenWidth * (303 / 375),
                                child: Text(
                                  'Даю согласие на обработку персональных данных',
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
            ),
          ),
          Positioned(
            top: screenHeight * (746 / 812),
            left: 0,
            right: 0,
            child: Center(
              child: SizedBox(
                width: 335,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Есть аккаунт? '),
                    GestureDetector(
                      child: Text('Войти'),
                      onTap: () {
                        Navigator.pushNamed(context, '/sign_in');
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
