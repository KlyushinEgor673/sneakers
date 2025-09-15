import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sneakers/app_text_styles.dart';
import 'package:sneakers/widgets/back.dart';

class MyCart extends StatefulWidget {
  const MyCart({super.key});

  @override
  State<MyCart> createState() => _MyCartState();
}

class _MyCartState extends State<MyCart> {
  int _countProduct = 3;
  List _products = [
    {
      'isDelete': false,
      'width': 335,
      'left': 0.0,
      'isEdit': false,
      'count': 1,
      'name': 'Nike Club Max',
      'price': '₽584.95'
    },
    {
      'isDelete': false,
      'width': 335,
      'left': 0.0,
      'isEdit': false,
      'count': 1,
      'name': 'Nike Air Max 200',
      'price': '₽94.05'
    },
    {
      'isDelete': false,
      'width': 335,
      'left': 0.0,
      'isEdit': false,
      'count': 1,
      'name': 'Nike Air Max 270 Essential',
      'price': '₽74.95'
    },
  ];
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
                itemCount: _products.length,
                itemBuilder: (BuildContext, i) {
                  return Container(
                    width: screenWidth * (335 / 375),
                    height: screenHeight * (104 / 812),
                    margin: EdgeInsets.only(bottom: screenHeight * (10 / 812)),
                    child: Stack(
                      children: [
                        Positioned(
                          top: 0,
                          left: screenWidth * (_products[i]['left'] / 375),
                          child: GestureDetector(
                            child: Container(
                              width:
                                  screenWidth * (_products[i]['width'] / 375),
                              height: screenHeight * (104 / 812),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Stack(
                                children: [
                                  Positioned(
                                    top: 0,
                                    bottom: 0,
                                    left: screenWidth * (10 / 375),
                                    child: Center(
                                      child: Container(
                                        width: screenWidth * (87 / 375),
                                        height: screenHeight * (85 / 812),
                                        decoration: BoxDecoration(
                                          color: Color.fromRGBO(
                                            247,
                                            247,
                                            249,
                                            1,
                                          ),
                                          borderRadius: BorderRadius.circular(
                                            16,
                                          ),
                                        ),
                                        child: Image.asset(
                                          'images/nike-epic.png',
                                          width: screenWidth * (86 / 375),
                                          height: screenHeight * (55 / 812),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: screenWidth * (127 / 375),
                                    top: screenHeight * (29 / 812),
                                    child: Text(_products[i]['name'], style: TextStyle(
                                      fontFamily: 'Raleway',
                                      // fontWeight: FontWeight.w500,
                                      fontSize: 16,
                                      height: 1,
                                      letterSpacing: 0
                                    ),),
                                  ),
                                  Positioned(
                                    left: screenWidth * (127 / 375),
                                      top: screenHeight * (54 / 812),
                                      child: Text(_products[i]['price'], style: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontSize: 14,
                                        height: 1,
                                        letterSpacing: 0,
                                        fontWeight: FontWeight.w500
                                      ),))
                                ],
                              ),
                            ),
                            onHorizontalDragEnd: (details) {
                              if (details.velocity.pixelsPerSecond.dx < 0) {
                                if (_products[i]['isEdit']) {
                                  setState(() {
                                    _products[i]['isEdit'] = false;
                                    _products[i]['width'] = 335;
                                    _products[i]['left'] = 0.0;
                                  });
                                } else {
                                  setState(() {
                                    _products[i]['isDelete'] = true;
                                    _products[i]['left'] = 0.0;
                                    _products[i]['width'] = 267;
                                  });
                                }
                              } else {
                                if (_products[i]['isDelete']) {
                                  setState(() {
                                    _products[i]['isDelete'] = false;
                                    _products[i]['left'] = 0.0;
                                    _products[i]['width'] = 335;
                                  });
                                } else {
                                  setState(() {
                                    _products[i]['isEdit'] = true;
                                    _products[i]['width'] = 267;
                                    _products[i]['left'] = 68.0;
                                  });
                                }
                              }
                            },
                          ),
                        ),
                        if (_products[i]['isEdit'])
                          Container(
                            width: screenWidth * (58 / 375),
                            height: screenHeight * (104 / 812),
                            decoration: BoxDecoration(
                              color: Color.fromRGBO(72, 178, 231, 1),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Stack(
                              children: [
                                Positioned(
                                  top: screenHeight * (14 / 812),
                                  left: screenWidth * (22 / 375),
                                  child: GestureDetector(
                                    child: SvgPicture.asset(
                                      'icons/Add.svg',
                                      width: screenWidth * (14 / 375),
                                      height: screenHeight * (14 / 812),
                                      color: Colors.white,
                                    ),
                                    onTap: () {
                                      setState(() {
                                        _products[i]['count'] =
                                            _products[i]['count'] + 1;
                                      });
                                    },
                                  ),
                                ),
                                Positioned(
                                  top: screenHeight * (51 / 812),
                                  left: screenWidth * (26 / 375),
                                  child: Text(
                                    _products[i]['count'].toString(),
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                                Positioned(
                                  top: screenHeight * (89.5 / 812),
                                  left: screenWidth * (22 / 375),
                                  child: GestureDetector(
                                    child: SvgPicture.asset(
                                      'icons/Minus.svg',
                                      width: screenWidth * (14 / 375),
                                      color: Colors.white,
                                    ),
                                    onTap: () {
                                      if (_products[i]['count'] - 1 == 0) {
                                        setState(() {
                                          _products.removeAt(i);
                                          _countProduct -= 1;
                                        });
                                      } else {
                                        setState(() {
                                          _products[i]['count'] =
                                              _products[i]['count'] - 1;
                                        });
                                      }
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ),
                        if (_products[i]['isDelete'])
                          Positioned(
                            right: 0,
                            child: GestureDetector(
                              onTap: () {
                                setState(() {
                                  _products.removeAt(i);
                                  _countProduct -= 1;
                                });
                              },
                              child: Container(
                                width: screenWidth * (58 / 375),
                                height: screenHeight * (104 / 812),
                                decoration: BoxDecoration(
                                  color: Color.fromRGBO(248, 114, 101, 1),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: Center(
                                  child: SvgPicture.asset(
                                    'icons/Trash.svg',
                                    height: screenHeight * (20 / 812),
                                    width: screenWidth * (18 / 375),
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ),
                      ],
                    ),
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
