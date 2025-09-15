import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sneakers/widgets/back.dart';
import 'package:sneakers/widgets/map_address.dart';

class DetailOrder extends StatelessWidget {
  const DetailOrder({super.key});

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
            child: Center(
              child: Text(
                '325556516',
                style: TextStyle(
                  fontFamily: 'Raleway',
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                  height: 20 / 16,
                  letterSpacing: 0,
                ),
              ),
            ),
          ),
          Positioned(
            top: screenHeight * (109 / 812),
            left: screenWidth * (20 / 375),
            child: SizedBox(
              width: screenWidth * (335 / 375),
              height: screenHeight * (696 / 812),
              child: ListView(
                children: [
                  Align(
                    child: Text(
                      '7 мин назад',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                        height: 20 / 14,
                        letterSpacing: 0,
                      ),
                    ),
                    alignment: Alignment((333 / 335), 0),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: screenHeight * (17 / 812)),
                    height: screenHeight * (105 / 812),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Stack(
                      children: [
                        Positioned(
                          top: screenHeight * (10 / 812),
                          left: screenWidth * (10 / 375),
                          child: Container(
                            width: screenWidth * (87 / 375),
                            height: screenHeight * (85 / 812),
                            decoration: BoxDecoration(
                              color: Color.fromRGBO(247, 247, 249, 1),
                              borderRadius: BorderRadius.circular(16),
                            ),
                            child: Center(
                              child: Image.asset(
                                'images/nike-epic.png',
                                height: screenHeight * (55 / 812),
                                width: screenWidth * (86 / 375),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          top: screenHeight * (12 / 812),
                          left: screenWidth * (109 / 375),
                          child: SizedBox(
                            width: 108,
                            child: Text(
                              'Nike Air Max 270 Essential',
                              style: TextStyle(
                                fontFamily: 'Raleway',
                                fontWeight: FontWeight.w500,
                                fontSize: 14,
                                height: 1,
                                letterSpacing: 0,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          top: screenHeight * (74 / 812),
                          left: screenWidth * (111 / 375),
                          child: Text(
                            '₽814.15',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                              height: 1,
                              letterSpacing: 0,
                            ),
                          ),
                        ),
                        Positioned(
                          top: screenHeight * (74 / 812),
                          left: screenWidth * (188 / 375),
                          child: Text(
                            '1 шт',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                              height: 1,
                              letterSpacing: 0,
                              color: Color.fromRGBO(106, 106, 106, 1),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  Container(
                    margin: EdgeInsets.only(top: screenHeight * (12 / 812)),
                    height: screenHeight * (105 / 812),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Stack(
                      children: [
                        Positioned(
                          top: screenHeight * (10 / 812),
                          left: screenWidth * (10 / 375),
                          child: Container(
                            width: screenWidth * (87 / 375),
                            height: screenHeight * (85 / 812),
                            decoration: BoxDecoration(
                              color: Color.fromRGBO(247, 247, 249, 1),
                              borderRadius: BorderRadius.circular(16),
                            ),
                            child: Center(
                              child: Image.asset(
                                'images/nike-epic.png',
                                height: screenHeight * (55 / 812),
                                width: screenWidth * (86 / 375),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          top: screenHeight * (12 / 812),
                          left: screenWidth * (109 / 375),
                          child: SizedBox(
                            width: 108,
                            child: Text(
                              'Nike Air Max 270 Essential',
                              style: TextStyle(
                                fontFamily: 'Raleway',
                                fontWeight: FontWeight.w500,
                                fontSize: 14,
                                height: 1,
                                letterSpacing: 0,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          top: screenHeight * (74 / 812),
                          left: screenWidth * (111 / 375),
                          child: Text(
                            '₽1200.10',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                              height: 1,
                              letterSpacing: 0,
                            ),
                          ),
                        ),
                        Positioned(
                          top: screenHeight * (74 / 812),
                          left: screenWidth * (188 / 375),
                          child: Text(
                            '2 шт',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                              height: 1,
                              letterSpacing: 0,
                              color: Color.fromRGBO(106, 106, 106, 1),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: screenHeight * (12 / 812)),
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
                          child: Text('Контактная информация', style: TextStyle(
                            fontFamily: 'Raleway',
                            fontWeight: FontWeight.w500,
                            fontSize: 14,
                            height: 20 / 14,
                            letterSpacing: 0
                          ),),
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
                          child: Text('emmanuel@gmail.com', style: TextStyle(
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
                            fontSize: 14,
                            height: 20 / 14,
                            letterSpacing: 0
                          ),),
                        ),
                        Positioned(
                          top: screenHeight * (76 / 812),
                          left: screenWidth * (72 / 375),
                          child: Text('Email', style: TextStyle(
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
                            fontSize: 12,
                            height: 16 / 12,
                            letterSpacing: 0,
                            color: Color.fromRGBO(106, 106, 106, 1)
                          ),),
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
                          child: Text('+234-811-732-5298', style: TextStyle(
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500,
                              fontSize: 14,
                              height: 20 / 14,
                              letterSpacing: 0
                          )),
                        ),
                        Positioned(
                          top: screenHeight * (132 / 812),
                          left: screenWidth * (72 / 375),
                          child: Text('Телефон', style: TextStyle(
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500,
                              fontSize: 12,
                              height: 16 / 12,
                              letterSpacing: 0,
                              color: Color.fromRGBO(106, 106, 106, 1)
                          )),
                        ),
                        Positioned(
                          top: screenHeight * (160 / 812),
                          left: screenWidth * (20 / 375),
                          child: Text('Адрес', style: TextStyle(
                            fontFamily: 'Raleway',
                            fontWeight: FontWeight.w500,
                            fontSize: 14,
                            height: 20 / 14,
                            letterSpacing: 0
                          ),),
                        ),
                        Positioned(
                          top: screenHeight * (192 / 812),
                          left: screenWidth * (20 / 375),
                          child: Text('1082 Аэропорт, Нигерии', style: TextStyle(
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
                            fontSize: 12,
                            height: 16 / 12,
                            letterSpacing: 0
                          ),),
                        ),
                        Positioned(
                          top: screenHeight * (224 / 812),
                          left: screenWidth * (20 / 375),
                          child: MapAddress(),
                        ),
                        Positioned(
                          top: screenHeight * (337 / 812),
                          left: screenWidth * (20 / 375),
                          child: Text('Способ оплаты', style: TextStyle(
                            fontFamily: 'Raleway',
                            fontWeight: FontWeight.w500,
                            fontSize: 14,
                            height: 20 / 24,
                            letterSpacing: 0
                          ),),
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
                              child: Image.asset(
                                'images/card.png',
                                height: screenHeight * (22 / 812),
                                width: screenWidth * (32 / 375),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          top: screenHeight * (369 / 812),
                          left: screenWidth * (72 / 375),
                          child: Text('DbL Card', style: TextStyle(
                            fontFamily: 'Work Sans',
                            fontWeight: FontWeight.w500,
                            fontSize: 14,
                            height: 20 / 14,
                            letterSpacing: 0
                          ),),
                        ),
                        Positioned(
                          top: screenHeight * (393 / 812),
                          left: screenWidth * (72 / 375),
                          child: Row(
                            children: [Text('**** **** ', style: TextStyle(
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500,
                              fontSize: 12,
                              height: 16 / 12,
                              letterSpacing: 0,
                              color: Color.fromRGBO(106, 106, 106, 1)
                            ),), Text('0696 4629', style: TextStyle(
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w500,
                                fontSize: 12,
                                height: 16 / 12,
                                letterSpacing: 0,
                                color: Color.fromRGBO(106, 106, 106, 1)
                            ))],
                          ),
                        ),
                      ],
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
