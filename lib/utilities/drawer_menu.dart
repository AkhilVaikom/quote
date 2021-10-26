import 'package:flutter/material.dart';

class DrowerMenu extends StatelessWidget {
  DrowerMenu({required this.headline, required this.icon, required this.onTap});
  final String headline;
  final IconData icon;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
        title: Text(headline),
        //subtitle: Text(subTitleText!),
        leading: Icon(icon),
        );
  }
}
