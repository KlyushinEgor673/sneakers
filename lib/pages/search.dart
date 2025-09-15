import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sneakers/app_text_styles.dart';
import 'package:sneakers/widgets/back.dart';
import 'package:sneakers/widgets/card_sneaker.dart';
import 'package:sneakers/widgets/history_button.dart';

class Search extends StatefulWidget {
  const Search({super.key});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  final controllerSearch = TextEditingController();

  bool _isSearch = true;

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
            child: SizedBox(
              width: screenWidth * (335 / 375),
              height: screenHeight * (44 / 812),
              child: Stack(
                children: [
                  Positioned(
                    top: screenHeight * (12 / 812),
                    child: SizedBox(
                      width: screenWidth * (335 / 375),
                      height: screenHeight * (20 / 812),
                      child: Text(
                        'Поиск',
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
            top: screenHeight * (118 / 812),
            left: screenWidth * (20 / 375),
            child: Container(
              width: screenWidth * (335 / 375),
              height: screenHeight * (52 / 812),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(14),
              ),
              child: Center(
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    prefixIcon: SizedBox(
                      height: screenHeight * (24 / 812),
                      width: screenWidth * (24 / 375),
                      child: Center(
                        child: SvgPicture.asset(
                          'icons/Search.svg',
                          height: screenHeight * (14.33 / 812),
                          width: screenWidth * (14.33 / 375),
                          color: Color.fromRGBO(106, 106, 106, 1),
                        ),
                      ),
                    ),
                    suffixIcon: Container(
                      height: screenHeight * (20 / 812),
                      width: screenWidth * (14 / 375),
                      child: Center(
                        child: SvgPicture.asset(
                          'icons/micro.svg',
                          height: screenHeight * (20 / 812),
                          width: screenWidth * (14 / 375),
                          color: Color.fromRGBO(112, 123, 129, 1),
                        ),
                      ),
                    ),
                    hintText: 'Поиск',
                  ),
                  controller: controllerSearch,
                  onSubmitted: (value) {
                    setState(() {
                      _isSearch = false;
                    });
                  },
                ),
              ),
            ),
          ),

          _isSearch
              ? Positioned(
                  top: screenHeight * (198 / 812),
                  left: screenWidth * (20 / 375),
                  child: Column(
                    children: [
                      SizedBox(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            HistoryButton(
                              text: 'New Shoes',
                              controllerSearch: controllerSearch,
                            ),
                            SizedBox(height: screenHeight * (16 / 812)),
                            HistoryButton(
                              text: 'Nike Top Shoes',
                              controllerSearch: controllerSearch,
                            ),
                            SizedBox(height: screenHeight * (16 / 812)),
                            HistoryButton(
                              text: 'Shoes',
                              controllerSearch: controllerSearch,
                            ),
                            SizedBox(height: screenHeight * (16 / 812)),
                            HistoryButton(
                              text: 'Snakers Nike Shoes',
                              controllerSearch: controllerSearch,
                            ),
                            SizedBox(height: screenHeight * (16 / 812)),
                            HistoryButton(
                              text: 'Regular Shoes',
                              controllerSearch: controllerSearch,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              : Positioned(
                  top: screenHeight * (202 / 812),
                  left: screenWidth * (20 / 375),
                  child: Container(
                    // color: Colors.green,
                    width: screenWidth * (335 / 375),
                    height: screenHeight - (screenHeight * (202 / 812)),
                    // height: screenHeight * (),
                    child: GridView.builder(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        mainAxisExtent: screenHeight * (182 / 812),
                        mainAxisSpacing: screenHeight * (15 / 812),
                        crossAxisSpacing: screenWidth * (15 / 375),
                      ),
                      itemCount: 8,
                      itemBuilder: (BuildContext context, i) {
                        return CardSneaker(isFavorite: true, isAdd: true);
                      },
                    ),
                  ),
                ),
        ],
      ),
    );
  }
}
