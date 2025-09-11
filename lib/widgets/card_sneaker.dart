import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CardSneaker extends StatefulWidget {
  const CardSneaker({super.key, required this.isFavorite, required this.isAdd});

  final bool isFavorite;
  final bool isAdd;

  @override
  State<CardSneaker> createState() => _CardSneaker();
}

class _CardSneaker extends State<CardSneaker> {
  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;
    return GestureDetector(
      child: Container(
        height: screenHeight * (182 / 812),
        width: screenWidth * (160 / 375),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Stack(
          children: [
            Positioned(
              top: screenHeight * (9 / 812),
              left: screenWidth * (9 / 375),
              child: Container(
                height: screenHeight * (28 / 812),
                width: screenHeight * (28 / 812),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  color: Color.fromRGBO(247, 247, 249, 1),
                ),
                child: Center(
                  child: widget.isFavorite
                      ? SvgPicture.asset(
                          'icons/Favorite-Fill.svg',
                          color: Color.fromRGBO(248, 114, 101, 1),
                          height: screenHeight * (16 / 812),
                          width: screenWidth * (26 / 375),
                        )
                      : SvgPicture.asset(
                          'icons/Favorite.svg',
                          height: screenHeight * (16 / 812),
                          width: screenWidth * (16 / 375),
                        ),
                ),
              ),
            ),
            Positioned(
              top: screenHeight * (18 / 812),
              left: screenWidth * (21 / 375),
              child: Transform.scale(
                child: Image.asset(
                  'images/nike-zoom.png',
                  width: screenWidth * (117.91 / 375),
                  height: screenHeight * (70 / 812),
                  fit: BoxFit.cover,
                ),
                scaleX: -1,
              ),
            ),
            Positioned(
              left: screenWidth * (9 / 375),
              top: screenHeight * (100 / 812),
              child: Text(
                'BEST SELLER',
                style: TextStyle(
                  fontFamily: 'New Peninim MT',
                  fontStyle: FontStyle.italic,
                  fontSize: 12,
                  letterSpacing: 0,
                  height: 1.25,
                  color: Color.fromRGBO(72, 178, 231, 1),
                ),
              ),
            ),
            Positioned(
              left: screenWidth * (9 / 375),
              top: screenHeight * (124 / 812),
              child: Text(
                'Nike Air Max',
                style: TextStyle(
                  fontFamily: 'New Peninim MT',
                  fontSize: 16,
                  height: 1.25,
                  letterSpacing: 0,
                  fontStyle: FontStyle.italic,
                ),
              ),
            ),
            Positioned(
              left: screenWidth * (9 / 375),
              bottom: screenHeight * (8 / 812),
              child: Text(
                '₽752.00',
                style: TextStyle(
                  // fontFamily: 'New Peninim MT',
                  fontStyle: FontStyle.italic,
                  letterSpacing: 0,
                  height: 16 / 14,
                  fontSize: 14,
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              right: 0,
              child: Container(
                width: screenWidth * (34 / 375),
                height: screenHeight * (34 / 812),
                decoration: BoxDecoration(
                  color: Color.fromRGBO(72, 178, 231, 1),
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(16),
                    topLeft: Radius.circular(16),
                  ),
                ),
                child: SizedBox(
                  width: screenWidth * (21 / 375),
                  height: screenHeight * (15.32 / 812),
                  child: widget.isAdd
                      ? SvgPicture.asset(
                          'icons/Add.svg',
                          color: Colors.white,

                          // fit: BoxFit.cover,
                        )
                      : Center(
                          child: SvgPicture.asset(
                            'icons/Cart.svg',
                            color: Colors.white,
                            height: screenHeight * (12 / 812),
                            width: screenWidth * (12 / 375),
                          ),
                        ),
                ),
              ),
            ),
          ],
        ),
      ),
      onTap: (){
        Navigator.pushNamed(context, '/details');
      },
    );
  }
}
