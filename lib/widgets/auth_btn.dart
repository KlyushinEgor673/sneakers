import 'package:flutter/material.dart';

class AuthBtn extends StatelessWidget {
  const AuthBtn({
    super.key,
    required this.onPressed,
    required this.text,
    required this.radius,
  });

  final VoidCallback onPressed;
  final String text;
  final double radius;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        width: MediaQuery.of(context).size.width * (335 / 375),
        height: MediaQuery.of(context).size.height * (50 / 812),
        decoration: BoxDecoration(
          color: Color.fromRGBO(72, 178, 231, 1),
          borderRadius: BorderRadius.circular(radius),
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              color: Colors.white,
              fontFamily: 'Raleway',
              fontWeight: FontWeight.w600,
              fontSize: 14,
              height: 22 / 14,
              letterSpacing: 0,
            ),
          ),
        ),
      ),
      onTap: onPressed,
    );
  }
}
