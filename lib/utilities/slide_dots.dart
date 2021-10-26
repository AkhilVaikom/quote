import 'package:flutter/material.dart';

class SlideDots extends StatelessWidget {
  final bool isActive;
  SlideDots({required this.isActive, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 150),
      margin: EdgeInsets.symmetric(horizontal: 10),
      height: isActive ? 12 : 8,
      width: isActive ? 12 : 8,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(12)),
        color: isActive ? Colors.black : Colors.grey,
      ),
    );
  }
}
