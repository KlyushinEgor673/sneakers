import 'package:flutter/material.dart';
import 'package:sneakers/widgets/auth_btn.dart';
import 'package:sneakers/widgets/auth_text_field.dart';

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
                      style: TextStyle(
                        fontFamily: 'New Peninim MT',
                        fontStyle: FontStyle.italic,
                        fontSize: 32,
                        height: 1.0,
                        fontWeight: FontWeight.w400,
                        letterSpacing: 0,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      'Заполните Свои Данные Или Продолжите Через Социальные Медиа',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: 'New Peninim MT',
                        color: Color.fromRGBO(112, 123, 129, 1),
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        fontStyle: FontStyle.italic,
                        height: 1.5,
                        letterSpacing: 0,
                      ),
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
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                    letterSpacing: 0,
                    fontStyle: FontStyle.italic,
                    height: 1.25
                ),
              ),
            ),
          ),
          Positioned(
            left: left,
            top: screenHeight * (277 / 812),
            child: AuthTextField(controller: emailController, isPwd: false,),
          ),
          Positioned(
            top: screenHeight * (355 / 812),
            left: left,
            child: Text(
              'Пароль',
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                  letterSpacing: 0,
                  fontStyle: FontStyle.italic,
                  height: 1.25
              ),
            ),
          ),
          Positioned(
            left: left,
            top: screenHeight * (387 / 812),
            child: AuthTextField(controller: pwdController, isPwd: true,),
          ),
          Positioned(
            top: screenHeight * (447 / 812),
            right: left,
            child: GestureDetector(
              child: SizedBox(
                // width: 76,
                height: 16,
                child: Text(
                  'Восстановить',
                  style: TextStyle(
                      fontFamily: 'New Peninim MT',
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                      color: Color.fromRGBO(112, 123, 129, 1),
                      height: 1,
                      letterSpacing: 0,
                      fontStyle: FontStyle.italic
                  ),
                ),
              ),
              onTap: () {},
            ),
          ),
          Positioned(
            top: screenHeight * (487 / 812),
            left: left,
            child: AuthBtn(
              onPressed: () {
                Navigator.pushNamed(context, '/home');
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
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                      color: Color.fromRGBO(106, 106, 106, 1),
                      height: 1,
                      letterSpacing: 0,
                      fontFamily: 'New Peninim MT',
                      fontStyle: FontStyle.italic
                  ),
                ),
                GestureDetector(
                  child: Text(
                    'Создать пользователя',
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                        height: 1,
                        letterSpacing: 0,
                        fontFamily: 'New Peninim MT',
                        fontStyle: FontStyle.italic
                    ),
                  ),
                  onTap: () {
                    print('CLICK');
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
