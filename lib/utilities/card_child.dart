import 'package:flutter/material.dart';

class CardChild extends StatelessWidget {
  final String headline;
  CardChild({required this.headline});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.grey.shade200,
      elevation: 5,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      //shadowColor: Colors.white,
      child: Center(
        child: Text("$headline"),
      ),
    );
  }
}
