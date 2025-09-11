import 'package:flutter/material.dart';
import 'package:sneakers/widgets/back.dart';

class Search extends StatelessWidget {
  const Search({super.key});

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
                      child: Text('Поиск', textAlign: TextAlign.center,),
                    ),
                  ),
                  Back(color: Colors.white),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
