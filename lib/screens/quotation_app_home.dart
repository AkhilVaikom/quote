import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quotation/constants/constants.dart';
import 'package:quotation/drawer_child.dart';
import 'package:quotation/utilities/card_child.dart';
import 'package:quotation/utilities/widgets/app_bar_container.dart';

class QuotationAppHome extends StatelessWidget {
  const QuotationAppHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: SizedBox(
          height: height,
          width: width,
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Stack(
              children: [
                AppBarContainer(
                height: height,
                width: width,
                image: appBarImage,
              ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    height: height * 0.7,
                    width: width,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30)),
                      color: Colors.white,
                    ),
                     ),
                ),
                   Align(
                    alignment: Alignment.bottomCenter,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      child: SizedBox(
                        height: height*.85,
                        width: width,
                        child: GridView.count(
                          childAspectRatio: 0.75,
                          crossAxisCount: 2,
                          crossAxisSpacing: 20,
                          mainAxisSpacing: 20,
                          children: [
                            CardChild(headline: "Quotation"),
                            CardChild(headline: "New Quotation"),
                            CardChild(headline: "Previous Quotation"),
                            CardChild(headline: "Settings"),
                          ],
                        ),
                      ),
                    ),
                  ),
              ]
            ),
          ),
        ),
      ),
      drawer: Drawer(
        child: DrawerChild(),
      ),
    );
  }
}
