import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sneakers/app_text_styles.dart';
import 'package:sneakers/widgets/auth_btn.dart';
import 'package:sneakers/widgets/back.dart';

class Checkout extends StatefulWidget {
  const Checkout({super.key});

  @override
  State<Checkout> createState() => _CheckoutState();
}

class _CheckoutState extends State<Checkout> {
  bool _isEmpty = false;
  bool _isEnd = false;
  String _emailText = 'emmanuel@gmail.com';
  String _phoneText = '+234-811-732-5298';

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
            child: SizedBox(
              width: screenWidth * (335 / 375),
              height: screenHeight * (44 / 812),
              child: Stack(
                children: [
                  Positioned(
                    top: screenHeight * (12 / 812),
                    left: 0,
                    right: 0,
                    child: Center(
                      child: Text('Корзина', style: AppTextStyles.headline),
                    ),
                  ),
                  Back(color: Colors.white),
                ],
              ),
            ),
          ),
          Positioned(
            top: screenHeight * (138 / 812),
            left: screenWidth * (20 / 375),
            child: SizedBox(
              width: screenWidth * (335 / 375),
              height: screenHeight * (642 / 812),
              child: Column(
                children: [
                  Container(
                    width: screenWidth * (335 / 375),
                    height: screenHeight * (425 / 812),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Stack(
                      children: [
                        Positioned(
                          top: screenHeight * (16 / 812),
                          left: screenWidth * (20 / 375),
                          child: Text('Контактная информация'),
                        ),
                        Positioned(
                          top: screenHeight * (52 / 812),
                          left: screenWidth * (20 / 375),
                          child: Container(
                            width: screenWidth * (40 / 375),
                            height: screenHeight * (40 / 812),
                            decoration: BoxDecoration(
                              color: Color.fromRGBO(247, 247, 249, 1),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Center(
                              child: SvgPicture.asset(
                                'icons/Email.svg',
                                height: screenHeight * (20 / 812),
                                width: screenWidth * (20 / 375),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          top: screenHeight * (52 / 812),
                          left: screenWidth * (72 / 375),
                          child: Text(_emailText),
                        ),
                        Positioned(
                          top: screenHeight * (76 / 812),
                          left: screenWidth * (72 / 375),
                          child: Text('Email'),
                        ),
                        Positioned(
                          top: screenHeight * (62 / 812),
                          right: screenWidth * (20 / 375),
                          child: SvgPicture.asset(
                            'icons/Edit.svg',
                            height: screenHeight * (20 / 812),
                            width: screenWidth * (20 / 375),
                          ),
                        ),

                        Positioned(
                          top: screenHeight * (108 / 812),
                          left: screenWidth * (20 / 375),
                          child: Container(
                            width: screenWidth * (40 / 375),
                            height: screenHeight * (40 / 812),
                            decoration: BoxDecoration(
                              color: Color.fromRGBO(247, 247, 249, 1),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Center(
                              child: SvgPicture.asset(
                                'icons/Call.svg',
                                height: screenHeight * (20 / 812),
                                width: screenWidth * (20 / 375),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          top: screenHeight * (108 / 812),
                          left: screenWidth * (72 / 375),
                          child: Text(_phoneText),
                        ),
                        Positioned(
                          top: screenHeight * (132 / 812),
                          left: screenWidth * (72 / 375),
                          child: Text('Телефон'),
                        ),
                        Positioned(
                          top: screenHeight * (118 / 812),
                          right: screenWidth * (20 / 375),
                          child: SvgPicture.asset(
                            'icons/Edit.svg',
                            height: screenHeight * (20 / 812),
                            width: screenWidth * (20 / 375),
                          ),
                        ),
                        Positioned(
                          top: screenHeight * (160 / 812),
                          left: screenWidth * (20 / 375),
                          child: Text('Адрес'),
                        ),
                        Positioned(
                          top: screenHeight * (192 / 812),
                          left: screenWidth * (20 / 375),
                          child: Text('1082 Аэропорт, Нигерии'),
                        ),
                        Positioned(
                          top: screenHeight * (188 / 812),
                          right: screenWidth * (27 / 375),
                          child: SvgPicture.asset(
                            'icons/Edit.svg',
                            height: screenHeight * (20 / 812),
                            width: screenWidth * (20 / 375),
                          ),
                        ),
                        Positioned(
                          top: screenHeight * (224 / 812),
                          left: screenWidth * (20 / 375),
                          child: Stack(
                            children: [
                              ClipRRect(
                                child: Image.asset(
                                  'images/map.png',
                                  width: screenWidth * (295 / 375),
                                  height: screenHeight * (101 / 812),
                                  fit: BoxFit.cover,
                                ),
                                borderRadius: BorderRadius.circular(16),
                              ),
                              Container(
                                width: screenWidth * (295 / 375),
                                height: screenHeight * (101 / 812),
                                decoration: BoxDecoration(
                                  color: Color.fromRGBO(0, 0, 0, 0.33),
                                  borderRadius: BorderRadius.circular(16),
                                ),
                              ),
                              Positioned(
                                top: screenHeight * (46 / 812),
                                left: 0,
                                right: 0,
                                child: Center(
                                  child: Container(
                                    width: screenWidth * (36 / 375),
                                    height: screenHeight * (36 / 812),
                                    decoration: BoxDecoration(
                                      color: Color.fromRGBO(72, 178, 231, 1),
                                      borderRadius: BorderRadius.circular(30),
                                    ),
                                    child: Center(
                                      child: SvgPicture.asset(
                                        'icons/Marker.svg',
                                        height: screenHeight * (20 / 812),
                                        width: screenWidth * (20 / 375),
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                top: screenHeight * (19 / 812),
                                left: 0,
                                right: 0,
                                child: Center(
                                  child: Text('Посмотреть на карте'),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                          top: screenHeight * (337 / 812),
                          left: screenWidth * (20 / 375),
                          child: Text('Способ оплаты'),
                        ),
                        Positioned(
                          top: screenHeight * (369 / 812),
                          left: screenWidth * (20 / 375),
                          child: Container(
                            width: screenWidth * (40 / 375),
                            height: screenHeight * (40 / 812),
                            decoration: BoxDecoration(
                              color: Color.fromRGBO(247, 247, 249, 1),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Center(
                              child: Container(
                                child: Image.asset(
                                  'images/card.png',
                                  height: screenHeight * (22 / 812),
                                  width: screenWidth * (32 / 375),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          top: screenHeight * (369 / 812),
                          left: screenWidth * (72 / 375),
                          child: Text('DbL Card'),
                        ),
                        Positioned(
                          top: screenHeight * (393 / 812),
                          left: screenWidth * (72 / 375),
                          child: SizedBox(
                            height: screenHeight * (16 / 812),
                            // width: screenWidth * (85.5 / 375),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text('**** **** '),
                                if (!_isEmpty) Text('0696 4629'),
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          top: screenHeight * (379 / 812),
                          right: screenWidth * (40.5 / 375),
                          child: Center(
                            child: SvgPicture.asset(
                              'icons/Arrow-Down.svg',
                              height: screenHeight * (20 / 812),
                              width: screenWidth * (20 / 375),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: screenHeight * (25 / 812)),
                    width: screenWidth * (335 / 375),
                    height: screenHeight * (192 / 812),
                    child: Stack(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [Text('Сумма'), Text('₽753.95')],
                        ),
                        Positioned(
                          top: screenHeight * (27.81 / 812),
                          child: SizedBox(
                            width: screenWidth * (335 / 375),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [Text('Доставка'), Text('₽753.95')],
                            ),
                          ),
                        ),
                        Positioned(
                          top: screenHeight * (71.67 / 812),
                          child: SvgPicture.asset(
                            'images/tire.svg',
                            width: screenWidth * (335 / 375),
                          ),
                        ),
                        Positioned(
                          top: screenHeight * (91.13 / 812),
                          child: SizedBox(
                            width: screenWidth * (335 / 375),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [Text('Итого'), Text('₽814.15')],
                            ),
                          ),
                        ),
                        Positioned(
                          top: screenHeight * (143.33 / 812),
                          child: AuthBtn(
                            onPressed: () {
                              if (_isEmpty == false) {
                                setState(() {
                                  _isEmpty = true;
                                  _emailText = '*******@****.***';
                                  _phoneText = '**-***-***-****';
                                });
                              } else {
                                setState(() {
                                  _isEnd = true;
                                });
                              }
                            },
                            text: 'Подтвердить',
                            radius: 12,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          if (_isEnd)
            BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 4, sigmaY: 4),
              child: Container(
                width: screenWidth,
                height: screenHeight,
                color: Color.fromRGBO(26, 37, 48, 0.2),
              ),
            ),
          if (_isEnd)
            Positioned(
              top: screenHeight * (267 / 812),
              left: screenWidth * (20 / 375),
              child: Container(
                width: screenWidth * (335 / 375),
                height: screenHeight * (400 / 812),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Stack(
                  children: [
                    Positioned(
                      top: screenHeight * (40 / 812),
                      left: screenWidth * (105 / 375),
                      child: Container(
                        width: screenWidth * (134 / 375),
                        height: screenHeight * (134 / 812),
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(223, 239, 255, 1),
                          borderRadius: BorderRadius.circular(200),
                        ),
                        child: Center(
                          child: Image.asset(
                            'images/happy.png',
                            height: screenHeight * (84 / 812),
                            width: screenWidth * (84 / 375),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: screenHeight * (198 / 812),
                      left: 0,
                      right: 0,
                      child: Center(
                        child: SizedBox(
                          width: screenWidth * (159 / 375),
                          child: Text('Вы успешно оформили заказ'),
                        ),
                      ),
                    ),
                    Positioned(
                      top: screenHeight * (284 / 812),
                      left: screenWidth * (50 / 375),
                      child: GestureDetector(
                        child: Container(
                          width: screenWidth * (235 / 375),
                          height: screenHeight * (51 / 812),
                          decoration: BoxDecoration(
                            color: Color.fromRGBO(72, 178, 231, 1),
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child: Center(child: Text('Вернуться к покупкам')),
                        ),
                        onTap: () {
                          Navigator.pushNamed(context, '/home');
                        },
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
