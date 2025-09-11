import 'package:flutter/material.dart';

class SquareSneaker extends StatelessWidget {
  const SquareSneaker({
    super.key,
    required this.child,
    required this.isActive,
    required this.onTap,
  });

  final Widget child;
  final bool isActive;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;
    return GestureDetector(
      child: Container(
        height: screenHeight * (56 / 812),
        width: screenWidth * (56 / 375),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
          border: Border.all(
            width: screenHeight * (3 / 812),
            color: isActive ? Color.fromRGBO(72, 178, 231, 1) : Colors.white,
          ),
        ),
        child: Center(child: child),
      ),
      onTap: onTap,
    );
  }
}
