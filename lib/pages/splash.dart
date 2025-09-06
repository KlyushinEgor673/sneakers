import 'package:flutter/material.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  Future<void> _init() async{
    await Future.delayed(Duration(seconds: 2));
    Navigator.pushNamed(context, '/onboard_1');
  }
  
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _init();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color.fromRGBO(72, 178, 231, 1),
              Color.fromRGBO(0, 118, 177, 1),
            ],
          )
        ),
        child: Center(
          child: Text('Matule Me', style: TextStyle(
            color: Colors.white,
            fontSize: 42,
            fontWeight: FontWeight.w700
          ),),
        ),
      ),
    );
  }
}
