import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sneakers/app_text_styles.dart';
import 'package:sneakers/widgets/custom_navigator_bar.dart';
import 'package:sneakers/widgets/hamburger.dart';

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
            top: screenHeight * (69 / 812),
            left: screenWidth * (29.14 / 375),
            child: Hamburger(),
          ),
          Positioned(
            top: screenHeight * (68 / 812),
            left: 0,
            right: 0,
            child: Center(
              child: Text(
                'Уведомления',
                style: AppTextStyles.headline,
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
                itemCount: 7,
                itemBuilder: (BuildContext context, i) {
                  if (i < 6){
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
                                  fontFamily: 'Raleway',
                                  fontWeight: FontWeight.w700,
                                  fontSize: 16,
                                  height: 1,
                                  letterSpacing: 0
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
                                    fontFamily: 'Raleway',
                                    fontWeight: FontWeight.w500,
                                    fontSize: 12,
                                    height: 1.2,
                                    letterSpacing: 0
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            bottom: screenHeight * (16 / 812),
                            left: screenWidth * (16 / 375),
                            child: Text('27.01.2024, 15:42', style: TextStyle(
                                color: Color.fromRGBO(112, 123, 129, 1),
                                fontFamily: 'Raleway',
                                fontWeight: FontWeight.w500,
                                fontSize: 12,
                                height: 1.2,
                                letterSpacing: 0
                            ),),
                          ),
                        ],
                      ),
                    );
                  }
                  else {
                    return Container(
                      width: screenWidth * (335 / 375),
                      height: screenHeight * (128 / 812),
                      margin: EdgeInsets.only(bottom: screenHeight * (12 / 812)),
                    );
                  }
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
