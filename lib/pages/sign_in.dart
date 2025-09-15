import 'package:flutter/material.dart';
import 'package:sneakers/app_text_styles.dart';
import 'package:sneakers/widgets/auth_btn.dart';
import 'package:sneakers/widgets/auth_text_field.dart';
import 'package:sneakers/widgets/back.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final emailController = TextEditingController();
  final pwdController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;
    final double left = screenWidth * (20 / 375);
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Positioned(
            top: screenHeight * (66 / 812),
            left: screenWidth * (20 / 375),
            child: Back(color: Color.fromRGBO(247, 247, 249, 1)),
          ),
          Positioned(
            top: screenHeight * (121 / 812),
            left: 0,
            right: 0,
            child: Center(
              child: Container(
                width: 335,
                child: Column(
                  children: [
                    Text(
                      'Привет!',
                      style: AppTextStyles.title,
                    ),
                    SizedBox(height: 8),
                    Text(
                      'Заполните Свои Данные Или Продолжите Через Социальные Медиа',
                      textAlign: TextAlign.center,
                      style: AppTextStyles.subtitle,
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            left: left,
            top: screenHeight * (245 / 812),
            child: SizedBox(
              width: 42,
              height: 20,
              child: Text(
                'Email',
                style: AppTextStyles.whatWrite,
              ),
            ),
          ),
          Positioned(
            left: left,
            top: screenHeight * (277 / 812),
            child: AuthTextField(controller: emailController, isPwd: false),
          ),
          Positioned(
            top: screenHeight * (355 / 812),
            left: left,
            child: Text(
              'Пароль',
              style: AppTextStyles.whatWrite,
            ),
          ),
          Positioned(
            left: left,
            top: screenHeight * (387 / 812),
            child: AuthTextField(controller: pwdController, isPwd: true),
          ),
          Positioned(
            top: screenHeight * (447 / 812),
            right: left,
            child: GestureDetector(
              child: Text(
                'Восстановить',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 12,
                  height: 16 / 12,
                  letterSpacing: 0,
                  color: Color.fromRGBO(112, 123, 129, 1)
                ),
              ),
              onTap: () {
                Navigator.pushNamed(context, '/forgot_password');
              },
            ),
          ),
          Positioned(
            top: screenHeight * (487 / 812),
            left: left,
            child: AuthBtn(
              radius: 14,
              onPressed: () {
                Navigator.pushNamed(context, '/profile_in_account');
              },
              text: 'Войти',
            ),
          ),
          Positioned(
            top: screenHeight * (746 / 812),
            left: 0,
            right: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Вы впервые? ',
                  style: TextStyle(
                    fontFamily: 'Raleway',
                    fontSize: 16,
                    height: 1,
                    letterSpacing: 0,
                    fontWeight: FontWeight.w500,
                    color: Color.fromRGBO(106, 106, 106, 1),
                  ),
                ),
                GestureDetector(
                  child: Text(
                    'Создать пользователя',
                    style: TextStyle(
                      fontFamily: 'Raleway',
                      fontSize: 16,
                      height: 1,
                      letterSpacing: 0,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  onTap: () {
                    Navigator.pushNamed(context, '/register');
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
