import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sneakers/widgets/back.dart';
import 'package:sneakers/widgets/bag_button.dart';
import 'package:sneakers/widgets/square_sneaker.dart';

class Details extends StatefulWidget {
  const Details({super.key});

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  int _activeId = 4;
  String _textButton = 'В Корзину';
  String _pathHeadImage = 'images/nike-zoom.png';
  double _scaleX = -1;
  bool _isCover = true;


  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Color.fromRGBO(247, 247, 249, 1),
      body: Stack(
        children: [
          Positioned(
            left: screenWidth * (20 / 375),
            top: screenHeight * (48 / 812),
            child: Back(color: Colors.white),
          ),
          Positioned(
            top: screenHeight * (60 / 812),
            left: screenWidth * (135 / 375),
            child: Text(
              'Sneaker Shop',
              style: TextStyle(
                fontSize: 16,
                fontStyle: FontStyle.italic,
                height: 1.25,
                letterSpacing: 0,
                fontFamily: 'New Peninim MT',
              ),
            ),
          ),
          Positioned(
            top: screenHeight * (48 / 812),
            right: screenWidth * (20 / 375),
            child: BagButton(),
          ),
          Positioned(
            top: screenHeight * (118 / 812),
            left: screenWidth * (20 / 375),
            child: SizedBox(
              width: screenWidth * (259 / 375),
              child: Text(
                'Nike Air Max 270 Essential',
                style: TextStyle(
                  fontSize: 26,
                  height: 1,
                  fontStyle: FontStyle.italic,
                  letterSpacing: 0,
                  fontFamily: 'New Peninim MT',
                ),
              ),
            ),
          ),
          Positioned(
            top: screenHeight * (185 / 812),
            left: screenWidth * (20 / 375),
            child: Text(
              'Men’s Shoes',
              style: TextStyle(
                fontStyle: FontStyle.italic,
                fontSize: 16,
                height: 1,
                letterSpacing: 0,
                fontFamily: 'New Peninim MT',
                color: Color.fromRGBO(106, 106, 106, 1),
              ),
            ),
          ),
          Positioned(
            top: screenHeight * (215 / 812),
            left: screenWidth * (20 / 375),
            child: Text(
              '₽179.39',
              style: TextStyle(
                fontSize: 24,
                height: 1,
                letterSpacing: 0,
                fontFamily: 'New Peninim MT',
              ),
            ),
          ),
          Positioned(
            top: screenHeight * (265 / 812),
            left: screenWidth * (66.89 / 375),
            child: Transform.scale(
              scaleX: _scaleX,
              child: Image.asset(
                _pathHeadImage,
                height: screenHeight * (125 / 812),
                width: screenWidth * (240 / 375),
                fit: _isCover ? BoxFit.cover : null,
              ),
            ),
          ),
          Positioned(
            top: screenHeight * (364 / 812),
            left: screenWidth * (12 / 375),
            child: SizedBox(
              width: screenWidth * (351 / 375),
              height: screenHeight * (68 / 812),
              child: SvgPicture.asset('images/Slider.svg'),
            ),
          ),
          Positioned(
            top: screenHeight * (469 / 812),
            left: screenWidth * (24 / 375),
            child: SizedBox(
              width: screenWidth - (screenWidth * (24 / 375)),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    SquareSneaker(
                      child: Image.asset(
                        'images/pink.png',
                        height: screenHeight * (27 / 812),
                        width: screenWidth * (52 / 375),
                        fit: BoxFit.cover,
                      ),
                      isActive: (_activeId == 1) ? true : false,
                      onTap: () {
                        setState(() {
                          _activeId = 1;
                          _pathHeadImage = 'images/pink.png';
                          _scaleX = 1;
                          _isCover = true;
                        });
                      },
                    ),
                    SizedBox(width: screenWidth * (14 / 375)),
                    SquareSneaker(
                      child: Image.asset(
                        'images/red.png',
                        height: screenHeight * (21.04 / 812),
                        width: screenWidth * (45.8 / 375),
                        fit: BoxFit.cover,
                      ),
                      isActive: (_activeId == 2) ? true : false,
                      onTap: () {
                        setState(() {
                          _activeId = 2;
                          _pathHeadImage = 'images/red.png';
                          _scaleX = 1;
                          _isCover = false;
                        });
                      },
                    ),
                    SizedBox(width: screenWidth * (14 / 375)),
                    SquareSneaker(
                      child: Image.asset(
                        'images/nike-ah.png',
                        width: screenWidth * (45 / 375),
                        height: screenHeight * (23.62 / 375),
                        fit: BoxFit.cover,
                      ),
                      isActive: (_activeId == 3) ? true : false,
                      onTap: () {
                        setState(() {
                          _activeId = 3;
                          _pathHeadImage = 'images/nike-ah.png';
                          _scaleX = 1;
                          _isCover = true;
                        });
                      },
                    ),
                    SizedBox(width: screenWidth * (14 / 375)),
                    SquareSneaker(
                      child: Transform.scale(
                        child: Image.asset(
                          'images/nike-zoom.png',
                          width: screenWidth * (45 / 375),
                          height: screenHeight * (21.08 / 812),
                          fit: BoxFit.cover,
                        ),
                        scaleX: -1,
                      ),
                      isActive: (_activeId == 4) ? true : false,
                      onTap: () {
                        setState(() {
                          _activeId = 4;
                          _pathHeadImage = 'images/nike-zoom.png';
                          _scaleX = -1;
                          _isCover = true;
                        });
                      },
                    ),
                    SizedBox(width: screenWidth * (14 / 375)),
                    SquareSneaker(
                      child: Image.asset(
                        'images/black.png',
                        height: screenHeight * (34.98 / 812),
                        width: screenWidth * (49.85 / 375),
                        fit: BoxFit.cover,
                      ),
                      isActive: (_activeId == 5) ? true : false,
                      onTap: () {
                        setState(() {
                          _activeId = 5;
                          _pathHeadImage = 'images/black.png';
                          _scaleX = 1;
                          _isCover = true;
                        });
                      },
                    ),
                    SizedBox(width: screenWidth * (14 / 375)),
                    SquareSneaker(
                      child: Image.asset(
                        'images/pink.png',
                        height: screenHeight * (27 / 812),
                        width: screenWidth * (52 / 375),
                        fit: BoxFit.cover,
                      ),
                      isActive: (_activeId == 6) ? true : false,
                      onTap: () {
                        setState(() {
                          _activeId = 6;
                          _pathHeadImage = 'images/pink.png';
                          _scaleX = 1;
                          _isCover = true;
                        });
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            top: screenHeight * (558 / 812),
            left: screenWidth * (20 / 375),
            child: SizedBox(
              width: 335,
              child: Text(
                'Вставка Max Air 270 обеспечивает '
                'непревзойденный комфорт в течение всего дня. '
                'Изящный дизайн ........',
                style: TextStyle(
                  fontSize: 14,
                  fontStyle: FontStyle.italic,
                  color: Color.fromRGBO(106, 106, 106, 1),
                  letterSpacing: 0,
                  height: 24 / 14,
                  fontFamily: 'New Peninim MT',
                ),
              ),
            ),
          ),
          Positioned(
            top: screenHeight * (635 / 812),
            right: screenWidth * (19 / 375),
            child: Text(
              'Подробнее',
              style: TextStyle(
                color: Color.fromRGBO(72, 178, 231, 1),
                fontSize: 14,
                fontStyle: FontStyle.italic,
                fontFamily: 'New Peninim MT',
                height: 21 / 14,
                letterSpacing: 0,
              ),
            ),
          ),
          Positioned(
            bottom: screenHeight * (40 / 812),
            left: screenWidth * (20 / 375),
            child: Container(
              height: screenHeight * (52 / 812),
              width: screenWidth * (52 / 375),
              decoration: BoxDecoration(
                color: Color.fromRGBO(217, 217, 217, 0.4),
                borderRadius: BorderRadius.circular(100),
              ),
              child: Center(
                child: SvgPicture.asset(
                  'icons/Favorite.svg',
                  height: screenHeight * (24 / 812),
                  width: screenWidth * (24 / 375),
                ),
              ),
            ),
          ),
          Positioned(
            bottom: screenHeight * (40 / 812),
            right: screenWidth * (20 / 375),
            child: GestureDetector(
              child: Container(
                height: screenHeight * (52 / 812),
                width: screenWidth * (265 / 375),
                decoration: BoxDecoration(
                  color: Color.fromRGBO(72, 178, 231, 1),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Stack(
                  children: [
                    Center(
                      child: Text(
                        _textButton,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          height: 1.5,
                          letterSpacing: 0,
                          fontFamily: 'New Peninim MT',
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: screenHeight * (14 / 812),
                      left: screenWidth * (12 / 375),
                      child: SvgPicture.asset(
                        'icons/bag-2.svg',
                        height: screenHeight * (24 / 812),
                        width: screenWidth * (24 / 375),
                      ),
                    ),
                  ],
                ),
              ),
              onTap: (){
                setState(() {
                  _textButton = 'Добавлено';
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}
