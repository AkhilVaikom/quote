import 'dart:ui';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:quotation/constants/constants.dart';
import 'package:quotation/constants/function_constants.dart';
import 'package:quotation/screens/quotation_app_home.dart';
import 'package:quotation/screens/quotation_signup.dart';
import 'package:quotation/utilities/widgets/app_bar_container.dart';
import 'package:quotation/utilities/widgets/reuse_button.dart';
import 'package:quotation/utilities/widgets/reuse_text_field.dart';

class QuotationLogin extends StatelessWidget {
  QuotationLogin({Key? key}) : super(key: key);

  final _emailTextController = TextEditingController();
  final _passwordTextController = TextEditingController();
  bool _validate = false;
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          height: height,
          width: width,
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
                  child: Form(
                    key: this._formKey,
                    child: Column(
                      children: [
                        SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: pageHeadText("Login"),
                        ),
                        SizedBox(height: 50),
                        Padding(
                            padding: const EdgeInsets.only(
                              left: 30,
                              right: 30,
                            ),
                            child: ReuseTextField(
                              hintText: "Email",
                              prefixIcon: Icons.email_outlined,
                              controller: _emailTextController,
                              validate: _validate,
                              textName: textField.email,
                            )),
                        const SizedBox(height: 10),
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 30,
                            right: 30,
                          ),
                          child: ReuseTextField(
                            hintText: "Password",
                            prefixIcon: Icons.password_outlined,
                            controller: _passwordTextController,
                            validate: _validate,
                            textName: textField.password,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Align(
                              alignment: Alignment.centerLeft,
                              child: TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    "Forget Pasword?",
                                    style: TextStyle(color: Colors.black87),
                                  ))),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 30,
                            right: 30,
                          ),
                          child: ReuseButton(
                              buttonName: "Login",
                              onPressed: () {
                                print(_emailTextController.text);
                                print(_passwordTextController.text);
                                // Navigator.push(
                                //   context,
                                //   MaterialPageRoute(
                                //       builder: (context) => QuotationAppHome()),
                                // );
                              }),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 50),
                          child: Text.rich(
                            TextSpan(
                              text: 'Don\'t Have an Account? ',
                              style:
                                  TextStyle(color: Colors.grey.shade900, fontSize: 14),
                              //style: DefaultTextStyle.of(context).style,
                              children: <TextSpan>[
                                TextSpan(
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                QuotationSignUp()),
                                      );
                                    },
                                  text: 'Sign Up',
                                  style: TextStyle(
                                      color: Colors.black,
                                      decoration: TextDecoration.underline,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
