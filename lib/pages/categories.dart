import 'package:flutter/material.dart';
import 'package:sneakers/widgets/box_category.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sneakers/widgets/card_sneaker.dart';

class Categories extends StatefulWidget {
  const Categories({super.key, required this.categoryName});

  final String categoryName;

  @override
  State<Categories> createState() => _CategoryState();
}

class _CategoryState extends State<Categories> {
  late String _categoryName;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    setState(() {
      _categoryName = widget.categoryName;
    });
  }

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Scaffold(
        backgroundColor: Color.fromRGBO(247, 247, 249, 1),
        body: Stack(
          children: [
            Positioned(
              top: screenHeight * (48 / 812),
              left: screenWidth * (20 / 375),
              child: GestureDetector(
                child: Padding(
                  padding: EdgeInsets.all(screenHeight * (10 / 812)),
                  child: SvgPicture.asset(
                    'icons/Back.svg',
                    height: screenHeight * (24 / 812),
                    width: screenWidth * (24 / 375),
                  ),
                ),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ),
            Positioned(
              top: screenHeight * (54 / 812),
              left: 0,
              right: 0,
              child: Center(
                child: Text(
                  _categoryName,
                  style: TextStyle(
                    fontSize: 16,
                    fontFamily: 'Raleway',
                    fontWeight: FontWeight.w600,
                    height: 20 / 16,
                    letterSpacing: 0,
                  ),
                ),
              ),
            ),
            Positioned(
              top: screenHeight * (108 / 812),
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
              top: screenHeight * (143 / 812),
              left: screenWidth * (20 / 375),
              child: SizedBox(
                width: screenWidth - (screenWidth * (20 / 375)),
                child: SingleChildScrollView(
                  child: Row(
                    children: [
                      BoxCategory(
                        text: 'Все',
                        color: (_categoryName == 'Все')
                            ? Color.fromRGBO(72, 178, 231, 1)
                            : Colors.white,
                        onTap: () {
                          setState(() {
                            _categoryName = 'Все';
                          });
                        },
                      ),
                      SizedBox(width: screenWidth * (16 / 375)),
                      BoxCategory(
                        text: 'Outdoor',
                        color: (_categoryName == 'Outdoor')
                            ? Color.fromRGBO(72, 178, 231, 1)
                            : Colors.white,
                        onTap: () {
                          setState(() {
                            _categoryName = 'Outdoor';
                          });
                        },
                      ),
                      SizedBox(width: screenWidth * (16 / 375)),
                      BoxCategory(
                        text: 'Tennis',
                        color: (_categoryName == 'Tennis')
                            ? Color.fromRGBO(72, 178, 231, 1)
                            : Colors.white,
                        onTap: () {
                          setState(() {
                            _categoryName = 'Tennis';
                          });
                        },
                      ),
                      SizedBox(width: screenWidth * (16 / 375)),
                      BoxCategory(
                        text: 'Running',
                        color: (_categoryName == 'Running')
                            ? Color.fromRGBO(72, 178, 231, 1)
                            : Colors.white,
                        onTap: () {
                          setState(() {
                            _categoryName = 'Running';
                          });
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
              top: screenHeight * (203 / 812),
              left: screenWidth * (20 / 375),
              child: SizedBox(
                width: screenWidth * (335 / 375),
                height: screenHeight - (screenHeight * (203 / 812)),
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 15,
                    crossAxisSpacing: 15,
                    mainAxisExtent: screenHeight * (182 / 812),
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
      ),
    );
  }
}
