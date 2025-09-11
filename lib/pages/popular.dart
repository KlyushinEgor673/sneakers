import 'package:flutter/material.dart';
import 'package:sneakers/widgets/back.dart';
import 'package:sneakers/widgets/card_sneaker.dart';

class Popular extends StatefulWidget {
  const Popular({super.key});

  @override
  State<Popular> createState() => _PopularState();
}

class _PopularState extends State<Popular> {
  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Color.fromRGBO(247, 247, 249, 1),
      body: Stack(
        children: [
          Positioned(
            top: screenHeight * (48 / 812),
            left: screenWidth * (20 / 375),
            child: SizedBox(
              width: screenWidth * (335 / 375),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Back(color: Colors.white,),
                  Text('Популярное', style: TextStyle(
                    fontSize: 16,
                    height: 1.5,
                    letterSpacing: 0,
                    fontFamily: 'New Peninim MT',
                    fontStyle: FontStyle.italic
                  )),
                  Container(
                    height: screenHeight * (40 / 812),
                    width: screenHeight * (40 / 812),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(40),
                    ),
                    child: Image.asset('icons/Favorite.png'),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: screenHeight * (112 / 812),
            left: screenWidth * (20 / 375),
            child: SizedBox(
              width: screenWidth * (335 / 375),
              height: screenHeight - (screenHeight * (112 / 812)),
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 15,
                  crossAxisSpacing: 15,
                  mainAxisExtent: screenHeight * (182 / 812),
                ),
                itemCount: 7,
                itemBuilder: (BuildContext context, i) {
                  return CardSneaker(isFavorite: true, isAdd: true,);
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
