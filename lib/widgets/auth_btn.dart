import 'package:flutter/material.dart';

class AuthBtn extends StatelessWidget {
  const AuthBtn({super.key, required this.onPressed, required this.text});

  final VoidCallback onPressed;
  final String text;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * (335 / 375),
      height: MediaQuery.of(context).size.height * (50 / 812),
      child: ElevatedButton(
        onPressed: onPressed,
        child: Text(text, style: TextStyle(
            fontFamily: 'New Peninim MT',
          fontSize: 14,
          fontWeight: FontWeight.w400,
          color: Colors.white,
          fontStyle: FontStyle.italic,
          letterSpacing: 0,
          height: 1.5
        ),),
        style: ElevatedButton.styleFrom(
          backgroundColor: Color.fromRGBO(72, 178, 231, 1),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(14),
          ),
        ),
      ),
    );
  }
}
