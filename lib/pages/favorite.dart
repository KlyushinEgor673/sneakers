import 'package:flutter/material.dart';
import 'package:sneakers/widgets/back.dart';
import 'package:sneakers/widgets/card_sneaker.dart';
import 'package:sneakers/widgets/custom_navigator_bar.dart';

class Favorite extends StatefulWidget {
  const Favorite({super.key});

  @override
  State<Favorite> createState() => _FavoriteState();
}

class _FavoriteState extends State<Favorite> {
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
            left: screenWidth * (21 / 375),
            child: Back(color: Colors.white,),
          ),
          Positioned(
            top: screenHeight * (60 / 812),
            left: screenWidth * (148 / 375),
            child: Text(
              'Избранное',
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
            top: screenHeight * (48 / 812),
            left: screenWidth * (316 / 375),
            child: Container(
              height: screenHeight * (44 / 812),
              width: screenHeight * (44 / 812),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(40),
              ),
              child: Image.asset(
                'icons/Favorite-Fill.png',
                color: Color.fromRGBO(248, 114, 101, 1),
              ),
            ),
          ),
          Positioned(
            top: screenHeight * (112 / 812),
            left: screenWidth * (20 / 375),
            child: SizedBox(
              height: screenHeight * (773 / 812),
              width: screenWidth * (335 / 375),
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisExtent: screenHeight * (182 / 812),
                  mainAxisSpacing: 15,
                  crossAxisSpacing: 15,
                ),
                itemCount: 8,
                itemBuilder: (BuildContext context, i) {
                  return CardSneaker(isFavorite: true, isAdd: true,);
                },
              ),
            ),
          ),
          CustomNavigatorBar(id: 2),
        ],
      ),
    );
  }
}
