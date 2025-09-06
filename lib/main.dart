import 'package:flutter/material.dart';
import 'package:sneakers/pages/favorite.dart';
import 'package:sneakers/pages/home.dart';
import 'package:sneakers/pages/onboard_1.dart';
import 'package:sneakers/pages/onboard_2.dart';
import 'package:sneakers/pages/onboard_3.dart';
import 'package:sneakers/pages/sign_in.dart';
import 'package:sneakers/pages/splash.dart';

void main() {
  runApp(
    MaterialApp(
      onGenerateRoute: (settings) {
        if (settings.name == '/sign_in') {
          return PageRouteBuilder(pageBuilder: (_, __, ___) => SignIn());
        } else if (settings.name == '/splash') {
          return PageRouteBuilder(pageBuilder: (_, __, ___) => Splash());
        } else if (settings.name == '/') {
          return PageRouteBuilder(pageBuilder: (_, __, ___) => Onboard1());
        } else if (settings.name == '/onboard_2') {
          return PageRouteBuilder(pageBuilder: (_, __, ___) => Onboard2());
        } else if (settings.name == '/onboard_3') {
          return PageRouteBuilder(pageBuilder: (_, __, ___) => Onboard3());
        } else if (settings.name == '/home') {
          return PageRouteBuilder(pageBuilder: (_, __, ___) => Home());
        } else if (settings.name == '/favorite') {
          return PageRouteBuilder(pageBuilder: (_, __, ___) => Favorite());
        }
      },
    ),
  );
}
