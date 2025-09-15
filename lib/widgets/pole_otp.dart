import 'package:flutter/material.dart';

class PoleOtp extends StatelessWidget {
  const PoleOtp({super.key, required this.text, required this.focusNodeOTP});
  final String text;
  final FocusNode focusNodeOTP;

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;
    return GestureDetector(
      child: Container(
        width: screenWidth * (46 / 375),
        height: screenHeight * (99 / 812),
        decoration: BoxDecoration(
            color: Color.fromRGBO(247, 247, 249, 1),
            borderRadius: BorderRadius.circular(12)
        ),
        child: Center(
          child: Text(text, style: TextStyle(
              fontSize: 20,
              fontFamily: 'Raleway'
          ),),
        ),
      ),
      onTap: (){
        focusNodeOTP.requestFocus();
      },
    );
  }
}
