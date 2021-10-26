import 'dart:async';
import 'package:flutter/material.dart';
import 'package:quotation/screens/quotation_login.dart';
import 'package:quotation/screens/quotation_signup.dart';
import 'package:quotation/utilities/widgets/reuse_button.dart';
import 'package:quotation/utilities/slide.dart';
import 'package:quotation/utilities/slide_dots.dart';
import 'package:quotation/utilities/slide_item.dart';

class SplashScreenBody extends StatefulWidget {
  const SplashScreenBody({Key? key}) : super(key: key);

  @override
  State<SplashScreenBody> createState() => _SplashScreenBodyState();
}

class _SplashScreenBodyState extends State<SplashScreenBody> {
  int _currentPage = 0;
  final PageController _pageController = PageController(
    initialPage: 0,
  );
  @override
  void initState() {
    super.initState();
    Timer.periodic(Duration(seconds: 5), (Timer time) {
      _currentPage < 2 ? _currentPage++ : _currentPage = 0;
      _pageController.animateToPage(_currentPage,
          duration: Duration(milliseconds: 300), curve: Curves.easeIn);
    });
  }

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }

  _onPageChane(int index) {
    setState(() {
      _currentPage = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30), topRight: Radius.circular(30)),
        color: Colors.white,
      ),
      // margin: EdgeInsets.only(top: height * .3),
      child: Column(
        children: [
          Expanded(
              child: Stack(
                alignment: AlignmentDirectional.bottomCenter,
            children: [
              PageView.builder(
                itemCount: slideList.length,
                itemBuilder: (context, index) => SlideItem(
                  index: index,
                ),
                controller: _pageController,
                scrollDirection: Axis.horizontal,
                onPageChanged: _onPageChane,
              ),
              Stack(
                children: [
                  Container(
                    margin: const EdgeInsets.only(bottom: 35),
                    child: Row(
                     // mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        for (int i = 0; i < slideList.length; i++)
                          i == _currentPage
                              ? SlideDots(isActive: true)
                              : SlideDots(isActive: false),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          )),
          Padding(
            padding:
                const EdgeInsets.only(left: 30, right: 30, top: 10, bottom: 10),
            child: ReuseButton(
                buttonName: "Login",
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => QuotationLogin()),
                  );
                }),
          ),
          Padding(
            padding:
                const EdgeInsets.only(left: 30, right: 30, top: 10, bottom: 10),
            child: ReuseButton(
                buttonName: "Sign Up",
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => QuotationSignUp()),
                  );
                }),
          )
        ],
      ),
    );
  }
}
