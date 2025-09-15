import 'package:flutter/material.dart';
import 'package:sneakers/app_text_styles.dart';
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
            left: 0,
            right: 0,
            child: Center(
              child: Text(
                'Избранное',
                style: AppTextStyles.headline,
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
              height: screenHeight - (screenHeight * (112 / 812)),
              width: screenWidth * (335 / 375),
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisExtent: screenHeight * (182 / 812),
                  mainAxisSpacing: 15,
                  crossAxisSpacing: 15,
                ),
                itemCount: 10,
                itemBuilder: (BuildContext context, i) {
                  if (i < 8){
                    return CardSneaker(isFavorite: true, isAdd: true,);
                  }
                  else {
                    return SizedBox(width: 160,);
                  }
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
