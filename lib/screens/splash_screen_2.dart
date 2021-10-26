import 'package:flutter/material.dart';
import 'package:quotation/constants/constants.dart';
import 'package:quotation/utilities/widgets/app_bar_container.dart';
import 'package:quotation/utilities/splash_screen_body.dart';

class SplashScreenTwo extends StatefulWidget {
  const SplashScreenTwo({Key? key}) : super(key: key);

  @override
  _SplashScreenTwoState createState() => _SplashScreenTwoState();
}

class _SplashScreenTwoState extends State<SplashScreenTwo> {
  // @override
  // void initState() {
  //   SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);
  //   super.initState();
  //   _navigatePage();
  // }

  // _navigatePage() async {
  //   await Future.delayed(Duration(milliseconds: 3500), () {});
  //   Navigator.pushReplacement(
  //       context, MaterialPageRoute(builder: (context) => QuotationLogin()));
  // }

  @override
  Widget build(BuildContext context) {
    final PageController _pageController = PageController(
      initialPage: 0,
    );
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(
        children: [
          AppBarContainer(
            height: height,
            width: width,
            image: appBarsplashImage,
          ),
          Container(
              //margin: EdgeInsets.only(top: height * .7),
              child: SplashScreenBody()),
        ],
      ),
    );
  }
}
