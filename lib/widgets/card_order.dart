import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CardOrder extends StatefulWidget {
  const CardOrder({super.key, required this.marginTop, required this.time});

  final double marginTop;
  final String time;

  @override
  State<CardOrder> createState() => _CardOrderState();
}

class _CardOrderState extends State<CardOrder> {
  bool _isDelete = false;
  bool _isEdit = false;
  double width = 335;
  double _left = 0.0;

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;
    return GestureDetector(
      child: Container(
        margin: EdgeInsets.only(top: screenHeight * (widget.marginTop / 812)),
        height: screenHeight * (105 / 812),
        width: screenWidth * (335 / 375),
        child: Stack(
          children: [
            Positioned(
              top: 0,
              left: screenWidth * (_left / 375),
              child: GestureDetector(
                child: Container(
                  height: screenHeight * (105 / 812),
                  width: screenWidth * (width / 375),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Stack(
                    children: [
                      Positioned(
                        left: screenWidth * (10 / 375),
                        top: 0,
                        bottom: 0,
                        child: Center(
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
                      ),
                      Positioned(
                        top: screenHeight * (14 / 812),
                        left: screenWidth * (111 / 375),
                        child: Text(
                          '№ 325556516',
                          style: TextStyle(
                            fontFamily: 'Raleway',
                            fontWeight: FontWeight.w500,
                            fontSize: 14,
                            height: 1,
                            letterSpacing: 0,
                            color: Color.fromRGBO(72, 178, 231, 1),
                          ),
                        ),
                      ),
                      Positioned(
                        top: screenHeight * (37 / 812),
                        left: screenWidth * (112 / 375),
                        child: SizedBox(
                          width: 152,
                          // height: 28,
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
                          '\$364.95',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
                            fontSize: 14,
                            height: 20 / 14,
                            letterSpacing: 0,
                          ),
                        ),
                      ),
                      Positioned(
                        top: screenHeight * (74 / 812),
                          left: screenWidth * (188 / 375),
                          child: Text('\$260.00', style: TextStyle(
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
                            fontSize: 14,
                            height: 20 / 14,
                            letterSpacing: 0,
                            color: Color.fromRGBO(106, 106, 106, 1)
                          ),)),
                      Positioned(
                        top: screenHeight * (10 / 812),
                        right: screenWidth * (10 / 375),
                        child: Text(widget.time, style: TextStyle(
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                          height: 20 / 14,
                          letterSpacing: 0,
                          color: Color.fromRGBO(106, 106, 106, 1)
                        ),),
                      ),
                    ],
                  ),
                ),
                onHorizontalDragEnd: (details) {
                  if (details.velocity.pixelsPerSecond.dx < 0) {
                    if (_isEdit) {
                      setState(() {
                        _isEdit = false;
                        _left = 0;
                        width = 335;
                      });
                    } else {
                      setState(() {
                        _isDelete = true;
                        width = 267;
                        _left = 0.0;
                      });
                    }
                  } else {
                    if (_isDelete) {
                      setState(() {
                        _isDelete = false;
                        width = 335;
                      });
                    } else {
                      setState(() {
                        width = 267;
                        _left = 68.0;
                        _isEdit = true;
                      });
                    }
                  }
                },
              ),
            ),
            if (_isDelete)
              Positioned(
                right: 0,
                top: 0,
                child: Container(
                  width: screenWidth * (58 / 375),
                  height: screenHeight * (104 / 812),
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(248, 114, 101, 1),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Center(
                    child: SvgPicture.asset(
                      'icons/cancel.svg',
                      height: screenHeight * (32 / 812),
                      width: screenWidth * (32 / 375),
                    ),
                  ),
                ),
              ),
            if (_isEdit)
              Positioned(
                left: 0,
                top: 0,
                child: Container(
                  width: screenWidth * (58 / 375),
                  height: screenHeight * (104 / 812),
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(72, 171, 231, 1),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Center(
                    child: SvgPicture.asset(
                      'icons/reload.svg',
                      height: screenHeight * (32 / 812),
                      width: screenWidth * (32 / 375),
                    ),
                  ),
                ),
              ),
          ],
        ),
      ),
      onTap: () {
        Navigator.pushNamed(context, '/detail_order');
      },
    );
  }
}
