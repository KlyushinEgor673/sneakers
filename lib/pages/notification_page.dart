import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sneakers/widgets/custom_navigator_bar.dart';

class NotificationPage extends StatefulWidget {
  const NotificationPage({super.key});

  @override
  State<NotificationPage> createState() => _NotificationState();
}

class _NotificationState extends State<NotificationPage> {
  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Positioned(
            top: screenHeight * (56 / 812),
            left: screenWidth * (20 / 375),
            child: SizedBox(
              height: screenHeight * (44 / 812),
              width: screenWidth * (44 / 375),
              child: Center(
                child: SvgPicture.asset(
                  'icons/Hamburger.svg',
                  width: screenWidth * (25.71 / 375),
                  height: screenHeight * (18 / 812),
                ),
              ),
            ),
          ),
          Positioned(
            top: screenHeight * (68 / 812),
            left: 0,
            right: 0,
            child: Center(
              child: Text(
                'Уведомления',
                style: TextStyle(
                  fontSize: 16,
                  height: 1.25,
                  letterSpacing: 0,
                  fontStyle: FontStyle.italic,
                  fontFamily: 'New Peninim MT',
                ),
              ),
            ),
          ),
          Positioned(
            top: screenHeight * (108 / 812),
            left: screenWidth * (20 / 375),
            child: SizedBox(
              width: screenWidth * (335 / 375),
              height: screenHeight * (688 / 812),
              child: ListView.builder(
                itemCount: 6,
                itemBuilder: (BuildContext context, i) {
                  return Container(
                    width: screenWidth * (335 / 375),
                    height: screenHeight * (128 / 812),
                    margin: EdgeInsets.only(bottom: screenHeight * (12 / 812)),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: Color.fromRGBO(247, 247, 249, 1),
                    ),
                    child: Stack(
                      children: [
                        Positioned(
                          top: screenHeight * (16 / 812),
                          left: screenWidth * (16 / 375),
                          child: Text(
                            'Заголовок',
                            style: TextStyle(
                              fontStyle: FontStyle.italic,
                              fontSize: 16,
                              height: 1,
                              letterSpacing: 0,
                              fontFamily: 'New Peninim MT',
                            ),
                          ),
                        ),
                        Positioned(
                          left: screenWidth * (16 / 375),
                          top: screenHeight * (40 / 812),
                          child: SizedBox(
                            width: 303,
                            child: Text(
                              'Lorem ipsum dolor sit amet consectetur. Venenatis pulvinar lobortis risus consectetur morbi egestas id in bibendum. Volutpat nulla urna sit sed diam nulla.',
                              style: TextStyle(
                                fontSize: 12,
                                height: 1.2,
                                letterSpacing: 0,
                                fontStyle: FontStyle.italic,
                                fontFamily: 'New Peninim MT',
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: screenHeight * (16 / 812),
                          left: screenWidth * (16 / 375),
                          child: Text('27.01.2024, 15:42', style: TextStyle(
                            color: Color.fromRGBO(112, 123, 129, 1),
                            fontSize: 12,
                            height: 1.2,
                            letterSpacing: 0,
                            fontStyle: FontStyle.italic,
                            // fontFamily: 'New Peninim MT',
                          ),),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ),
          CustomNavigatorBar(id: 3),
        ],
      ),
    );
  }
}
