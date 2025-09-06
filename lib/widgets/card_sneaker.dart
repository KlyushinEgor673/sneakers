import 'package:flutter/material.dart';

class CardSneaker extends StatefulWidget {
  const CardSneaker({super.key});

  @override
  State<CardSneaker> createState() => _CardSneaker();
}

class _CardSneaker extends State<CardSneaker> {
  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;
    return Container(
      height: screenHeight * (182 / 812),
      width: screenWidth * (160 / 375),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16)
      ),
    );
  }
}
