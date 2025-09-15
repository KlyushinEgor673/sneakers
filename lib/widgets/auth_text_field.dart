import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AuthTextField extends StatefulWidget {
  const AuthTextField({super.key, this.controller, required this.isPwd});

  final controller;
  final bool isPwd;

  @override
  State<AuthTextField> createState() => _AuthTextFieldState();
}

class _AuthTextFieldState extends State<AuthTextField> {
  bool _isClose = true;

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;
    return Container(
      height: screenHeight * (48 / 812),
      width: screenWidth * (335 / 375),
      decoration: BoxDecoration(
        color: Color.fromRGBO(247, 247, 249, 1),
        borderRadius: BorderRadius.circular(14),
      ),
      child: Center(
        child: TextFormField(
          style: TextStyle(
            fontFamily: 'Poppins',
            fontSize: 14,
            fontWeight: FontWeight.w500,
            height: 16 / 14,
            letterSpacing: 0,
            color: Color.fromRGBO(106, 106, 106, 1),
          ),
          decoration: InputDecoration(
            border: InputBorder.none,
            suffixIcon: widget.isPwd
                ? GestureDetector(
                    child: SizedBox(
                      height: screenHeight * (13 / 812),
                      width: screenWidth * (16.37 / 375),
                      child: Center(
                        child: SvgPicture.asset(
                          _isClose ? 'icons/Eye-Close.svg' : 'icons/Eye-Open.svg',
                          color: Color.fromRGBO(106, 106, 106, 1),
                          height: screenHeight * (13 / 812),
                          width: screenWidth * (16.37 / 375),
                        ),
                      ),
                    ),
                    onTap: () {
                      setState(() {
                        _isClose = !_isClose;
                      });
                    },
                  )
                : null,
            contentPadding: EdgeInsets.only(
              top: 16,
              right: 57,
              bottom: 16,
              left: 14,
            ),
          ),
          controller: widget.controller,
          obscureText: widget.isPwd ? (_isClose ? true : false) : false,
        ),
      ),
    );
  }
}
