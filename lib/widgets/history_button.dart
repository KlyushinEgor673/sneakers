import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HistoryButton extends StatefulWidget {
  const HistoryButton({
    super.key,
    required this.text,
    required this.controllerSearch,
  });

  final String text;
  final TextEditingController controllerSearch;

  @override
  State<HistoryButton> createState() => _HistoryButtonState();
}

class _HistoryButtonState extends State<HistoryButton> {
  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;
    return GestureDetector(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(
            'icons/Clock.svg',
            height: screenHeight * (22 / 812),
            width: screenWidth * (22 / 375),
            color: Color.fromRGBO(112, 123, 129, 1),
          ),
          Padding(
            padding: EdgeInsets.only(left: screenWidth * (12 / 375)),
            child: Text(widget.text, style: TextStyle(
              fontFamily: 'Raleway',
              fontWeight: FontWeight.w500,
              fontSize: 14,
              height: 16 / 14,
              letterSpacing: 0
            ),),
          ),
        ],
      ),
      onTap: (){
        setState(() {
          widget.controllerSearch.text = widget.text;
        });
      },
    );
  }
}
