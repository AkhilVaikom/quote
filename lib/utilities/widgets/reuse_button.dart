import 'package:flutter/material.dart';

class ReuseButton extends StatelessWidget {
  const ReuseButton({required this.buttonName, required this.onPressed,
    Key? key,
  }) : super(key: key);
  final String buttonName;
  final Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
          child: Container(
            padding: EdgeInsets.all(10),
            height: 50,
            width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  color: Colors.black),
              child: Center(
                child: Text(
                  "$buttonName",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              )),
              onTap: onPressed,
        );
  }
}
 
