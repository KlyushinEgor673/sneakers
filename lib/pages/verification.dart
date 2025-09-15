import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sneakers/widgets/back.dart';
import 'package:sneakers/widgets/pole_otp.dart';

class Verification extends StatefulWidget {
  const Verification({super.key});

  @override
  State<Verification> createState() => _VerificationState();
}

class _VerificationState extends State<Verification> {
  final _controller = TextEditingController();
  final _code = ['', '', '', '', '', ''];
  final FocusNode focusNodeOTP = FocusNode();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_){
      FocusScope.of(context).requestFocus(focusNodeOTP);
    });
  }

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Positioned(
              top: -screenHeight,
              left: 0,
              child: SizedBox(
                  width: 300,
                  child: TextField(
                    maxLength: 6,
                    keyboardType: TextInputType.number,
                    controller: _controller,
                    focusNode: focusNodeOTP,
                    onChanged: (value){
                      for (int i = 0; i < 6; ++i){
                        try {
                          _code[i] = value[i];
                        } catch(e) {
                          _code[i] = '';
                        }
                      }
                      setState((){
                        _code;
                      });
                    },
                    inputFormatters: [
                      FilteringTextInputFormatter.digitsOnly,
                    ],
                    onSubmitted: (value){
                      Navigator.pushNamed(context, '/profile_in_account');
                    },
                  ))),
          Positioned(
            top: screenHeight * (64 / 812),
            left: screenWidth * (20 / 375),
            child: Back(color: Color.fromRGBO(247, 247, 249, 1)),
          ),
          Positioned(
            top: screenHeight * (124 / 812),
            left: screenWidth * (20 / 375),
            child: SizedBox(
              width: screenWidth * (335 / 375),
              height: screenHeight * (312 / 812),
              child: Stack(
                children: [
                  Positioned(
                    top: 0,
                    left: 0,
                    right: 0,
                    child: Center(
                      child: Text(
                        'OTP Проверка',
                        style: TextStyle(
                          fontFamily: 'Raleway',
                          fontWeight: FontWeight.w700,
                          fontSize: 32,
                          height: 1,
                          letterSpacing: 0,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: screenHeight * (46 / 812),
                    left: 0,
                    right: 0,
                    child: Center(
                      child: SizedBox(
                        width: 335,
                        height: 72,
                        child: Text(
                          textAlign: TextAlign.center,
                          'Пожалуйста, Проверьте Свою '
                          'Электронную Почту, Чтобы Увидеть Код Подтверждения',
                          style: TextStyle(
                            color: Color.fromRGBO(112, 123, 129, 1),
                            fontFamily: 'Poppins',
                            fontSize: 16,
                            height: 24 / 16,
                            letterSpacing: 0,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: screenHeight * (134 / 812),
                    left: 0,
                    child: Text(
                      'OTP Код',
                      style: TextStyle(
                        fontFamily: 'Raleway',
                        fontSize: 21,
                        fontWeight: FontWeight.w600,
                        height: 1,
                        letterSpacing: 0,
                      ),
                    ),
                  ),
                  Positioned(
                    top: screenHeight * (179 / 812),
                    child: SizedBox(
                      width: screenWidth * (336 / 375),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          PoleOtp(text: _code[0], focusNodeOTP: focusNodeOTP,),
                          PoleOtp(text: _code[1], focusNodeOTP: focusNodeOTP,),
                          PoleOtp(text: _code[2], focusNodeOTP: focusNodeOTP,),
                          PoleOtp(text: _code[3], focusNodeOTP: focusNodeOTP,),
                          PoleOtp(text: _code[4], focusNodeOTP: focusNodeOTP,),
                          PoleOtp(text: _code[5], focusNodeOTP: focusNodeOTP,),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    top: screenHeight * (298 / 812),
                    child: SizedBox(
                      width: screenWidth * (335 / 375),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [Text('Отправить заново', style: TextStyle(
                          fontFamily: 'Raleway',
                          color: Color.fromRGBO(112, 123, 129, 1),
                          fontSize: 12,
                          height: 1,
                          letterSpacing: 0
                        ),), Text('00:30', style: TextStyle(
                            fontFamily: 'Raleway',
                            color: Color.fromRGBO(112, 123, 129, 1),
                            fontSize: 12,
                            height: 1,
                            letterSpacing: 0
                        ),)],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
