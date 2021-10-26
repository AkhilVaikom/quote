import 'package:flutter/material.dart';
import 'package:quotation/constants/constants.dart';

BoxDecoration appBarBoxDecoration(String image) => BoxDecoration(
      image: DecorationImage(image: AssetImage(image), fit: BoxFit.fill),
    );

Text pageHeadText(String headText) {
  return Text(
    headText,
    style: headTextStyle,
  );
}

OutlineInputBorder textOutlineBorder() {
  return const OutlineInputBorder(
      borderSide: BorderSide(color: Colors.black),
      borderRadius: BorderRadius.all(Radius.circular(20)));
}

BoxDecoration boxDecoration() {
  return BoxDecoration(
    borderRadius: BorderRadius.only(
        topLeft: Radius.circular(30), topRight: Radius.circular(30)),
    color: Colors.white,
  );
}

// Function DashBord(){
//   return 
// }
