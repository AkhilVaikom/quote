import 'package:flutter/material.dart';
import 'package:quotation/screens/quotation_app_home.dart';
import 'package:quotation/screens/quotation_login.dart';
import 'package:quotation/utilities/drawer_menu.dart';
//import 'package:quotation/drawer_menu.dart';

class DrawerChild extends StatelessWidget {
  const DrawerChild({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        DrawerHeader(
          child: Text(
            "Company Name",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
          ),
        ),

        DrowerMenu(
          headline: "Dashboard",
          icon: Icons.home,
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => QuotationAppHome()));
          },
        ),
        DrowerMenu(
          headline: "Company info",
          icon: Icons.apartment,
          onTap: () {},
        ),
        DrowerMenu(
          headline: "New Quotation",
          icon: Icons.my_library_add,
          onTap: () {},
        ),
        DrowerMenu(
          headline: "Previous Quotation",
          icon: Icons.my_library_books_rounded,
          onTap: () {},
        ),
        DrowerMenu(
          headline: "Settings",
          icon: Icons.settings,
          onTap: () {},
        ),
        //const SizedBox(height: 20,),
        const Divider(
          thickness: 1,
        ),
        DrowerMenu(
          headline: "Contact Us",
          icon: Icons.contacts_rounded,
          onTap: () {},
        ),
        DrowerMenu(
          headline: "Exit",
          icon: Icons.exit_to_app,
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => QuotationLogin()));
          },
        ),
      ],
    );
  }
}
