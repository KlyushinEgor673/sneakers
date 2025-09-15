import 'package:flutter/material.dart';

class NextBtn extends StatelessWidget {
  const NextBtn({super.key, required this.text, required this.onClick});

  final String text;
  final VoidCallback onClick;

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;
    return GestureDetector(
      child: Container(
        width: screenWidth * (335 / 375),
        height: screenHeight * (50 / 812),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(13),
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              fontFamily: 'Raleway',
              fontSize: 14,
              height: 1,
              letterSpacing: 0,
              fontWeight: FontWeight.w600,
              color: Colors.black,
            ),
          ),
        ),
      ),
      onTap: onClick,
    );
    //   SizedBox(
    //   height: screenHeight *  (50 / 812 ),
    //   width: screenWidth * (335 / 375),
    //   child: ElevatedButton(
    //     onPressed: onClick,
    //     child:
    //     Text(text, style: TextStyle(
    //         fontFamily: 'Raleway',
    //       fontSize: 14,
    //       height: 1,
    //       letterSpacing: 0,
    //       fontWeight: FontWeight.w600,
    //       color: Colors.black
    //     ),),
    //     style: ElevatedButton.styleFrom(
    //       backgroundColor: Colors.white,
    //       shape: RoundedRectangleBorder(
    //         borderRadius: BorderRadius.circular(13),
    //       ),
    //     ),
    //   ),
    // );
  }
}
