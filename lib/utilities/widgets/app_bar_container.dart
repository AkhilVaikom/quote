import 'package:flutter/material.dart';
//import 'package:quotation/constants/constants.dart';
import 'package:quotation/constants/function_constants.dart';

class AppBarContainer extends StatelessWidget {
  const AppBarContainer({
    required this.height,
    required this.width,
    required this.image
  });
  final double height;
  final double width;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height * .35,
      width: width,
      decoration: appBarBoxDecoration(image),
    );
  }
}
