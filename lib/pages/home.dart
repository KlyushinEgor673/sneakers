import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sneakers/widgets/bag_button.dart';
import 'package:sneakers/widgets/box_category.dart';
import 'package:sneakers/widgets/card_sneaker.dart';
import 'package:sneakers/widgets/custom_navigator_bar.dart';
import 'package:sneakers/widgets/hamburger.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Color.fromRGBO(247, 247, 249, 1),
      body: Stack(
        children: [
          Positioned(
            top: screenHeight * (62 / 812),
            left: screenWidth * (20 / 375),
            child: Hamburger(),
          ),
          Positioned(
            top: screenHeight * (54 / 812),
            left: 0,
            right: 0,
            child: Center(
              child: Text(
                'Главная',
                style: TextStyle(
                  fontFamily: 'Raleway',
                  fontWeight: FontWeight.w700,
                  fontSize: 32,
                  height: 1,
                  letterSpacing: 0,
                ),
              ),
            ),
          ),
          Positioned(
            top: screenHeight * (48 / 812),
            left: screenWidth * (311 / 375),
            child: BagButton(),
          ),
          Positioned(
            top: screenHeight * (113 / 812),
            left: screenWidth * (20 / 375),
            child: GestureDetector(
              child: Container(
                width: screenWidth * (269 / 375),
                height: screenHeight * (52 / 812),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(14),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromRGBO(0, 0, 0, 0.04),
                      offset: Offset(0, 4),
                      blurRadius: 4,
                      spreadRadius: 0,
                    ),
                  ],
                ),
                child: Stack(
                  children: [
                    Positioned(
                      left: screenWidth * (30.83 / 375),
                      top: 0,
                      bottom: 0,
                      child: Center(
                        child: SvgPicture.asset(
                          'icons/Search.svg',
                          height: screenHeight * (24 / 812),
                          width: screenWidth * (24 / 375),
                          color: Color.fromRGBO(106, 106, 106, 1),
                        ),
                      ),
                    ),
                    Positioned(
                      left: screenWidth * (62 / 275),
                      top: 0,
                      bottom: 0,
                      child: Center(
                        child: Text(
                          'Поиск',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
                            fontSize: 12,
                            height: 20 / 12,
                            letterSpacing: 0,
                            color: Color.fromRGBO(106, 106, 106, 1),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              onTap: () {
                Navigator.pushNamed(context, '/search');
              },
            ),
          ),
          Positioned(
            top: screenHeight * (113 / 812),
            left: screenWidth * (303 / 375),
            child: InkWell(
              child: Container(
                width: screenHeight * (52 / 812),
                height: screenHeight * (52 / 812),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Color.fromRGBO(72, 178, 231, 1),
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromRGBO(0, 0, 0, 0.04),
                      offset: Offset(0, 4),
                      blurRadius: 4,
                      spreadRadius: 0,
                    ),
                  ],
                ),
                child: Center(
                  child: SizedBox(
                    height: screenHeight * (24 / 812),
                    width: screenWidth * (24 / 375),
                    child: SvgPicture.asset(
                      'icons/Sliders.svg',
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              onTap: () {},
            ),
          ),
          Positioned(
            top: screenHeight * (187 / 812),
            left: screenWidth * (21 / 375),
            child: Text(
              'Категории',
              style: TextStyle(
                fontFamily: 'Raleway',
                fontWeight: FontWeight.w600,
                fontSize: 16,
                height: 1,
                letterSpacing: 0,
              ),
            ),
          ),
          Positioned(
            top: screenHeight * (222 / 812),
            left: screenWidth * (20 / 375),
            child: SizedBox(
              width: screenWidth - (screenWidth * (20 / 375)),
              child: SingleChildScrollView(
                child: Row(
                  children: [
                    BoxCategory(
                      text: 'Все',
                      color: Colors.white,
                      onTap: () {
                        Navigator.pushNamed(
                          context,
                          '/category',
                          arguments: {'categoryName': 'Все'},
                        );
                      },
                    ),
                    SizedBox(width: screenWidth * (16 / 375)),
                    BoxCategory(
                      text: 'Outdoor',
                      color: Colors.white,
                      onTap: () {
                        Navigator.pushNamed(
                          context,
                          '/category',
                          arguments: {'categoryName': 'Outdoor'},
                        );
                      },
                    ),
                    SizedBox(width: screenWidth * (16 / 375)),
                    BoxCategory(
                      text: 'Tennis',
                      color: Colors.white,
                      onTap: () {
                        Navigator.pushNamed(
                          context,
                          '/category',
                          arguments: {'categoryName': 'Tennis'},
                        );
                      },
                    ),
                    SizedBox(width: screenWidth * (16 / 375)),
                    BoxCategory(
                      text: 'Running',
                      color: Colors.white,
                      onTap: () {
                        Navigator.pushNamed(
                          context,
                          '/category',
                          arguments: {'categoryName': 'Running'},
                        );
                      },
                    ),
                    SizedBox(width: screenWidth * (16 / 375)),
                  ],
                ),
                scrollDirection: Axis.horizontal,
              ),
            ),
          ),
          Positioned(
            top: screenHeight * (286 / 812),
            left: screenWidth * (20 / 375),
            child: SizedBox(
              width: screenWidth * (335 / 375),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Популярное',
                    style: TextStyle(
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                      height: 24 / 16,
                      letterSpacing: 0,
                    ),
                  ),
                  GestureDetector(
                    child: Text(
                      'Все',
                      style: TextStyle(
                        color: Color.fromRGBO(72, 178, 231, 1),
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w500,
                        fontSize: 12,
                        height: 16 / 12,
                        letterSpacing: 0,
                      ),
                    ),
                    onTap: () {
                      Navigator.pushNamed(context, '/popular');
                    },
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: screenHeight * (340 / 812),
            left: screenWidth * (20 / 375),
            child: SizedBox(
              width: screenWidth * (335 / 375),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CardSneaker(isFavorite: false, isAdd: true),
                  CardSneaker(isFavorite: false, isAdd: false),
                ],
              ),
            ),
          ),
          Positioned(
            top: screenHeight * (551 / 812),
            left: screenWidth * (20 / 375),
            child: SizedBox(
              width: screenWidth * (335 / 375),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Акции',
                    style: TextStyle(
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                      height: 1,
                      letterSpacing: 0,
                    ),
                  ),
                  Text(
                    'Все',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                      fontSize: 12,
                      height: 16 / 12,
                      letterSpacing: 0,
                      color: Color.fromRGBO(72, 178, 231, 1),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: screenHeight * (590 / 812),
            left: 0,
            right: 0,
            child: Center(
              child: SizedBox(
                width: screenWidth * (335 / 375),
                height: screenHeight * (95 / 812),
                child: Image.asset(
                  'components/advertising.png',
                  fit: BoxFit.fitWidth,
                ),
              ),
            ),
          ),
          CustomNavigatorBar(id: 1),
        ],
      ),
      // bottomNavigationBar: CustomNavigatorBar(),
    );
  }
}
