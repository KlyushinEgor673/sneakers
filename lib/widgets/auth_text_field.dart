import 'package:flutter/material.dart';

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
    return Container(
      height: MediaQuery.of(context).size.height * (48 / 812),
      width: MediaQuery.of(context).size.width * (335 / 375),
      decoration: BoxDecoration(
        color: Color.fromRGBO(247, 247, 249, 1),
        borderRadius: BorderRadius.circular(14),
      ),
      // margin: EdgeInsets.only(right: 20, left: 20),
      child: TextFormField(
        style: TextStyle(
          color: Color.fromRGBO(106, 106, 106, 1)
        ),
        decoration: InputDecoration(
          border: InputBorder.none,
          suffixIcon: widget.isPwd
              ? IconButton(
                  onPressed: () {
                    setState(() {
                      _isClose = !_isClose;
                    });
                  },
                  icon: _isClose
                      ? Image.asset(
                          'icons/Eye-Close.png',
                          color: Color.fromRGBO(106, 106, 106, 1),
                        )
                      : Image.asset(
                          'icons/Eye-Open.png',
                          color: Color.fromRGBO(106, 106, 106, 1),
                        ),
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
      ),
    );
  }
}
