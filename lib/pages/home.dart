import 'package:flutter/material.dart';
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
            left: screenWidth * (123.71 / 375),
            child: Text(
              'Главная',
              style: TextStyle(
                fontSize: 32,
                height: 1,
                letterSpacing: 0,
                fontWeight: FontWeight.w400,
                fontFamily: 'New Peninim MT',
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
                ),
                child: Image.asset('icons/Sliders.png', color: Colors.white),
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
                fontFamily: 'New Peninim MT',
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
                      fontSize: 16,
                      fontStyle: FontStyle.italic,
                      height: 1.5,
                      letterSpacing: 0,
                      fontFamily: 'New Peninim MT',
                    ),
                  ),
                  GestureDetector(
                    child: Text(
                      'Все',
                      style: TextStyle(
                        letterSpacing: 0,
                        fontFamily: 'New Peninim MT',
                        fontSize: 12,
                        fontStyle: FontStyle.italic,
                        height: 16 / 12,
                        color: Color.fromRGBO(72, 178, 231, 1),
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
                      fontSize: 16,
                      fontStyle: FontStyle.italic,
                      height: 1.5,
                      letterSpacing: 0,
                      fontFamily: 'New Peninim MT',
                    ),
                  ),
                  Text(
                    'Все',
                    style: TextStyle(
                      letterSpacing: 0,
                      fontFamily: 'New Peninim MT',
                      fontSize: 12,
                      fontStyle: FontStyle.italic,
                      height: 16 / 12,
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
