import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:sneakers/pages/checkout.dart';
import 'package:sneakers/pages/details.dart';
import 'package:sneakers/pages/edit_profile.dart';
import 'package:sneakers/pages/favorite.dart';
import 'package:sneakers/pages/forgot_password.dart';
import 'package:sneakers/pages/home.dart';
import 'package:sneakers/pages/my_cart.dart';
import 'package:sneakers/pages/notification_page.dart';
import 'package:sneakers/pages/onboard_1.dart';
import 'package:sneakers/pages/onboard_2.dart';
import 'package:sneakers/pages/onboard_3.dart';
import 'package:sneakers/pages/popular.dart';
import 'package:sneakers/pages/profile_in_account.dart';
import 'package:sneakers/pages/register.dart';
import 'package:sneakers/pages/search.dart';
import 'package:sneakers/pages/side_menu.dart';
import 'package:sneakers/pages/sign_in.dart';
import 'package:sneakers/pages/splash.dart';
import 'package:sneakers/pages/categories.dart';
import 'package:sneakers/pages/verification.dart';

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
        } else if (settings.name == '/popular') {
          return PageRouteBuilder(pageBuilder: (_, __, ___) => Popular());
        } else if (settings.name == '/category') {
          final args = settings.arguments as Map;
          return PageRouteBuilder(
            pageBuilder: (_, __, ___) =>
                Categories(categoryName: args['categoryName']),
          );
        } else if (settings.name == '/forgot_password') {
          return PageRouteBuilder(
            pageBuilder: (_, __, ___) => ForgotPassword(),
          );
        } else if (settings.name == '/notification') {
          return PageRouteBuilder(
            pageBuilder: (_, __, ___) => NotificationPage(),
          );
        } else if (settings.name == '/details') {
          return PageRouteBuilder(pageBuilder: (_, __, ___) => Details());
        } else if (settings.name == '/profile_in_account') {
          return PageRouteBuilder(
            pageBuilder: (_, __, ___) => ProfileInAccount(),
          );
        } else if (settings.name == '/edit_profile') {
          return PageRouteBuilder(pageBuilder: (_, __, ___) => EditProfile());
        } else if (settings.name == '/side_menu') {
          return PageRouteBuilder(pageBuilder: (_, __, ___) => SideMenu());
        } else if (settings.name == '/my_cart') {
          return PageRouteBuilder(pageBuilder: (_, __, ___) => MyCart());
        } else if (settings.name == '/verification') {
          return PageRouteBuilder(pageBuilder: (_, __, ___) => Verification());
        } else if (settings.name == '/register') {
          return PageRouteBuilder(pageBuilder: (_, __, ___) => Register());
        } else if (settings.name == '/search') {
          return PageRouteBuilder(pageBuilder: (_, __, ___) => Search());
        } else if (settings.name == '/checkout') {
          return PageRouteBuilder(pageBuilder: (_, __, ___) => Checkout());
        }
      },
    ),
  );
}
