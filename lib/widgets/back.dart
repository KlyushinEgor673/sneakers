import 'package:flutter/material.dart';


class Back extends StatelessWidget {
  const Back({super.key, required this.color});
  final Color color;

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;
    return GestureDetector(
      child: Container(
        height: screenHeight * (44 / 812),
        width: screenHeight * (44 / 812),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(40),
        ),
        child: Image.asset('icons/Back.png'),
      ),
      onTap: () {
        Navigator.pop(context);
      },
    );
  }
}
