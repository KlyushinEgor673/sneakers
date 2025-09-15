import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomNavigatorBar extends StatefulWidget {
  const CustomNavigatorBar({super.key, required this.id});

  final int id;

  @override
  State<CustomNavigatorBar> createState() => _CustomNavigatorBarState();
}

class _CustomNavigatorBarState extends State<CustomNavigatorBar> {
  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;
    return Positioned(
      top: screenHeight * (706 / 812),
      child: Stack(
        children: [
          Image.asset(
            'components/NavBar.png',
            fit: BoxFit.fitWidth,
            height: screenHeight * (106 / 812),
            width: screenWidth,
          ),
          Positioned(
            top: screenHeight * (52 / 812),
            left: screenWidth * (31 / 375),
            child: SizedBox(
              width: screenWidth * (313 / 375),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: screenWidth * (87 / 375),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          child: SvgPicture.asset(
                            'icons/Home.svg',
                            height: screenHeight * (24 / 812),
                            width: screenWidth * (22 / 375),
                            color: (widget.id == 1)
                                ? Color.fromRGBO(72, 178, 231, 1)
                                : Color.fromRGBO(112, 123, 129, 1),
                          ),
                          onTap: () {
                            Navigator.pushNamed(context, '/home');
                          },
                        ),
                        GestureDetector(
                          child: SvgPicture.asset(
                            'icons/Favorite.svg',
                            height: screenHeight * (24 / 812),
                            width: screenWidth * (24 / 375),
                            color: (widget.id == 2)
                                ? Color.fromRGBO(72, 178, 231, 1)
                                : Color.fromRGBO(112, 123, 129, 1),
                          ),
                          onTap: () {
                            Navigator.pushNamed(context, '/favorite');
                          },
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: screenWidth * (87 / 375),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          child: SvgPicture.asset(
                            'icons/Notification.svg',
                            height: screenHeight * (24 / 812),
                            width: screenWidth * (24 / 375),
                            color: (widget.id == 3)
                                ? Color.fromRGBO(72, 178, 231, 1)
                                : Color.fromRGBO(112, 123, 129, 1),
                          ),
                          onTap: () {
                            Navigator.pushNamed(context, '/notification');
                          },
                        ),
                        GestureDetector(
                          child: SvgPicture.asset(
                            'icons/Profile.svg',
                            height: screenHeight * (24 / 812),
                            width: screenWidth * (24 / 375),
                            color: (widget.id == 4)
                                ? Color.fromRGBO(72, 178, 231, 1)
                                : Color.fromRGBO(112, 123, 129, 1),
                          ),
                          onTap: () {
                            Navigator.pushNamed(context, '/sign_in');
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            left: screenWidth * (160 / 375),
            child: GestureDetector(
              child: Container(
                height: screenHeight * (56 / 812),
                width: screenHeight * (56 / 812),
                decoration: BoxDecoration(
                  color: Color.fromRGBO(72, 178, 231, 1),
                  borderRadius: BorderRadius.circular(30),
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromRGBO(91, 158, 225, 0.6),
                      blurRadius: 24,
                      offset: Offset(0, 8),
                      spreadRadius: 0,
                    ),
                  ],
                ),
                child: Center(
                  child: SvgPicture.asset(
                    'icons/bag-2.svg',
                    height: screenHeight * (24 / 812),
                    width: screenWidth * (24 / 375),
                  ),
                ),
              ),
              onTap: () {
                Navigator.pushNamed(context, '/my_cart');
              },
            ),
          ),
        ],
      ),
    );
  }
}
