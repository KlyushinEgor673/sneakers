import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sneakers/app_text_styles.dart';
import 'package:sneakers/widgets/auth_btn.dart';
import 'package:sneakers/widgets/back.dart';

class MyCart extends StatefulWidget {
  const MyCart({super.key});

  @override
  State<MyCart> createState() => _MyCartState();
}

class _MyCartState extends State<MyCart> {
  final int _countProduct = 3;

  bool _isAdd = false;
  bool _isDelete = false;
  double _width = 335;

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
              child: Stack(
                children: [
                  Positioned(
                    top: screenHeight * (12 / 812),
                    child: SizedBox(
                      width: screenWidth * (335 / 375),
                      child: Text(
                        'Корзина',
                        textAlign: TextAlign.center,
                        style: AppTextStyles.headline,
                      ),
                    ),
                  ),
                  Back(color: Colors.white),
                ],
              ),
            ),
          ),
          Positioned(
            top: screenHeight * (108 / 812),
            left: screenWidth * (20 / 375),
            child: Text(
              '${_countProduct} товара',
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
            top: screenHeight * (140 / 812),
            left: screenWidth * (20 / 375),
            child: SizedBox(
              width: screenWidth * (335 / 375),
              height: screenHeight * (414 / 812),
              child: ListView.builder(
                itemCount: _countProduct,
                itemBuilder: (BuildContext, i) {
                  return Stack(
                    children: [
                      if (_isAdd)
                        Container(
                          height: screenHeight * (104 / 812),
                          width: screenWidth * (58 / 375),
                          decoration: BoxDecoration(
                            color: Color.fromRGBO(72, 178, 231, 1),
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                      Positioned(
                        right: _isAdd ? 0 : null,
                        // top: 0,
                        child: GestureDetector(
                          child: Container(
                            height: screenHeight * (104 / 812),
                            width: screenWidth * (_width / 375),
                            margin: EdgeInsets.only(
                              bottom: screenHeight * (14 / 812),
                            ),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                          onHorizontalDragUpdate: (details) {
                            // print();
                            setState(() {
                              if (details.delta.dx < 0) {
                                _width = 267;
                                _isDelete = true;
                              }
                              else {
                                _isAdd = true;
                                _width = 270;
                              }
                            });
                            print(_width);
                          },
                        ),
                      ),
                      if (_isDelete)
                        Positioned(
                          right: 0,
                          child: Container(
                            height: screenHeight * (104 / 812),
                            width: screenWidth * (58 / 375),
                            decoration: BoxDecoration(
                              color: Color.fromRGBO(248, 114, 101, 1),
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                        ),
                    ],
                  );
                },
              ),
            ),
          ),
          Positioned(
            top: screenHeight * (554 / 812),
            child: Container(
              color: Colors.white,
              width: screenWidth,
              height: screenHeight * (258 / 812),
              child: Stack(
                children: [
                  Positioned(
                    left: screenWidth * (20 / 375),
                    top: screenHeight * (34 / 812),
                    child: SizedBox(
                      width: screenWidth * (335 / 375),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Сумма',
                            style: TextStyle(
                              color: Color.fromRGBO(112, 123, 129, 1),
                              fontSize: 16,
                              height: 20 / 16,
                              letterSpacing: 0,
                              fontWeight: FontWeight.w500,
                              fontFamily: 'Raleway',
                            ),
                          ),
                          Text(
                            '₽753.95',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 16,
                              height: 1,
                              letterSpacing: 0,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    left: screenWidth * (20 / 375),
                    top: screenHeight * (66 / 812),
                    child: SizedBox(
                      width: screenWidth * (335 / 375),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Доставка',
                            style: TextStyle(
                              color: Color.fromRGBO(112, 123, 129, 1),
                              fontSize: 16,
                              height: 20 / 16,
                              letterSpacing: 0,
                              fontWeight: FontWeight.w500,
                              fontFamily: 'Raleway',
                            ),
                          ),
                          Text(
                            '₽60.20',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 16,
                              height: 1,
                              letterSpacing: 0,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    top: screenHeight * (106 / 812),
                    left: screenWidth * (20 / 375),
                    child: SvgPicture.asset(
                      'images/tire.svg',
                      width: screenWidth * (335 / 375),
                    ),
                  ),
                  Positioned(
                    left: screenWidth * (20 / 375),
                    top: screenHeight * (122 / 812),
                    child: SizedBox(
                      width: screenWidth * (335 / 375),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Итого',
                            style: TextStyle(
                              fontSize: 16,
                              height: 20 / 16,
                              letterSpacing: 0,
                              fontWeight: FontWeight.w500,
                              fontFamily: 'Raleway',
                            ),
                          ),
                          Text(
                            '₽814.15',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 16,
                              height: 1,
                              letterSpacing: 0,
                              fontWeight: FontWeight.w500,
                              color: Color.fromRGBO(72, 178, 231, 1),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    top: screenHeight * (176 / 812),
                    left: screenWidth * (20 / 375),
                    child: GestureDetector(
                      child: Container(
                        width: screenWidth * (335 / 375),
                        height: screenHeight * (50 / 812),
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(72, 178, 231, 1),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Center(
                          child: Text(
                            'Оформить Заказ',
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Raleway',
                              fontWeight: FontWeight.w500,
                              fontSize: 14,
                              height: 22 / 14,
                              letterSpacing: 0,
                            ),
                          ),
                        ),
                      ),
                      onTap: () {
                        Navigator.pushNamed(context, '/checkout');
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
