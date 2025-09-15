import 'package:flutter/material.dart';
import 'package:sneakers/app_text_styles.dart';
import 'package:sneakers/widgets/check_text_field.dart';
import 'package:sneakers/widgets/custom_navigator_bar.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({super.key});

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Positioned(
            top: screenHeight * (55 / 812),
            left: 0,
            right: 0,
            child: Center(
              child: Container(
                height: screenHeight * (32 / 812),
                width: screenWidth * (212 / 375),
                decoration: BoxDecoration(
                  color: Color.fromRGBO(72, 178, 231, 1),
                  borderRadius: BorderRadius.circular(14),
                ),
                child: Center(
                  child: Text('Сохранить', style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Raleway',
                    fontWeight: FontWeight.w600,
                    fontSize: 16
                  ),),
                ),
              ),
            ),
          ),
          Positioned(
            top: screenHeight * (130 / 812),
            left: screenWidth * (139 / 375),
            child: ClipRRect(
              child: Image.asset(
                'images/person.jpg',
                height: screenHeight * (96 / 812),
                width: screenWidth * (96 / 375),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(100),
            ),
          ),
          Positioned(
            top: screenHeight * (234 / 812),
            left: 0,
            right: 0,
            child: Center(
              child: Text(
                'Emmanuel Oyiboke',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontFamily: 'Raleway',
                  fontSize: 20,
                  height: 1,
                ),
              ),
            ),
          ),
          Positioned(
            top: screenHeight * (265 / 812),
            left: 0,
            right: 0,
            child: Center(child: Text('Изменить фото профиля', style: TextStyle(
              fontFamily: 'Raleway',
              fontWeight: FontWeight.w600,
              fontSize: 12,
              height: 16 / 12,
              letterSpacing: 0,
              color: Color.fromRGBO(72, 178, 231, 1)
            ),)),
          ),
          Positioned(
            top: screenHeight * (302 / 812),
            left: screenWidth * (22 / 375),
            child: Text('Имя', style: AppTextStyles.whatWrite,),
          ),
          Positioned(
            top: screenHeight * (338 / 812),
            left: screenWidth * (22 / 375),
            child: CheckTextField(
              controller: TextEditingController(text: 'Emmanuel'),
            ),
          ),
          Positioned(
            top: screenHeight * (402 / 812),
            left: screenWidth * (22 / 375),
            child: Text('Фамилия', style: AppTextStyles.whatWrite,),
          ),
          Positioned(
            top: screenHeight * (438 / 812),
            left: screenWidth * (22 / 375),
            child: CheckTextField(
              controller: TextEditingController(text: 'Oyiboke'),
            ),
          ),
          Positioned(
            top: screenHeight * (502 / 812),
            left: screenWidth * (22 / 375),
            child: Text('Адрес', style: AppTextStyles.whatWrite,),
          ),
          Positioned(
            top: screenHeight * (538 / 812),
            left: screenWidth * (22 / 375),
            child: CheckTextField(
              controller: TextEditingController(text: 'Nigeria'),
            ),
          ),
          Positioned(
            top: screenHeight * (602 / 812),
            left: screenWidth * (22 / 375),
            child: Text('Телефон', style: AppTextStyles.whatWrite,),
          ),
          Positioned(
            top: screenHeight * (638 / 812),
            left: screenWidth * (22 / 375),
            child: CheckTextField(
              controller: TextEditingController(text: '+7 811-732-5298'),
            ),
          ),
          CustomNavigatorBar(id: 4),
        ],
      ),
    );
  }
}
