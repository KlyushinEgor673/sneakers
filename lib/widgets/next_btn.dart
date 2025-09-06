import 'package:flutter/material.dart';

class NextBtn extends StatelessWidget {
  const NextBtn({super.key, required this.text, required this.onClick});

  final String text;
  final VoidCallback onClick;

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;
    return SizedBox(
      height: screenHeight *  (50 / 812 ),
      width: screenWidth * (335 / 375),
      child: ElevatedButton(
        onPressed: onClick,
        child: Text(text, style: TextStyle(
            fontFamily: 'New Peninim MT',
          fontStyle: FontStyle.italic,
          fontSize: 14,
          fontWeight: FontWeight.w400,
          height: 1,
          letterSpacing: 0,
          color: Colors.black
        ),),
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(13),
          ),
        ),
      ),
    );
  }
}
