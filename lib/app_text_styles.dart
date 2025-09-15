import 'dart:ui';
import 'package:flutter/material.dart';

class AppTextStyles {
  static const TextStyle headline = TextStyle(
    fontFamily: 'Raleway',
    fontWeight: FontWeight.w600,
    fontSize: 16,
    height: 20 / 16,
    letterSpacing: 0
  );
  static const TextStyle whatWrite = TextStyle(
    fontFamily: 'Raleway',
    fontWeight: FontWeight.w500,
    fontSize: 16,
    height: 20 / 16,
    letterSpacing: 0
  );
  static const TextStyle title = TextStyle(
    fontFamily: 'Raleway',
    fontWeight: FontWeight.w700,
    fontSize: 32,
    height: 1,
    letterSpacing: 0
  );
  static const TextStyle subtitle = TextStyle(
    fontFamily: 'Poppins',
    fontSize: 16,
    height: 24 / 16,
    letterSpacing: 0,
    color: Color.fromRGBO(112, 123, 129, 1)
  );
  static const TextStyle titleOnboard = TextStyle(
    fontFamily: 'Raleway',
    fontWeight: FontWeight.w700,
    fontSize: 34,
    height: 44.2 / 34,
    letterSpacing: 0,
    color: Colors.white
  );
  static const TextStyle subtitleOnboard = TextStyle(
    fontFamily: 'Poppins',
    fontSize: 16,
    height: 24 / 16,
    letterSpacing: 0,
    color: Color.fromRGBO(216, 216, 216, 1)
  );
}