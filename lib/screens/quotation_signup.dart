import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quotation/constants/constants.dart';
import 'package:quotation/constants/function_constants.dart';
import 'package:quotation/screens/quotation_app_home.dart';
import 'package:quotation/utilities/widgets/app_bar_container.dart';
import 'package:quotation/utilities/widgets/reuse_button.dart';
import 'package:quotation/utilities/widgets/reuse_text_field.dart';

class QuotationSignUp extends StatefulWidget {
  QuotationSignUp({Key? key}) : super(key: key);

  @override
  State<QuotationSignUp> createState() => _QuotationSignUpState();
}

class _QuotationSignUpState extends State<QuotationSignUp> {
  final _nameController = TextEditingController();

  final _phoneController = TextEditingController();

  final _emailController = TextEditingController();

  final _passwordController = TextEditingController();

  bool _validate = false;
 

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            AppBarContainer(
              height: height,
              width: width,
              image: appBarImage,
            ),
            Container(
                //margin: EdgeInsets.only(top: height * .7),
                child: SignUpBodyContainer(height, context)),
          ],
        ),
      ),
    );
  }

  Container SignUpBodyContainer(double height, BuildContext context) {
    return Container(
      decoration: boxDecoration(),
      margin: EdgeInsets.only(top: height * .3),
      child: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: EdgeInsets.only(top: 20, bottom: 20),
            child: pageHeadText("Sign Up"),
          ),
          SizedBox(
            height: 30,
          ),
          Padding(
              padding: EdgeInsets.only(
                left: 30,
                right: 30,
              ),
              child: ReuseTextField(
                controller: _nameController,
                hintText: "Full Name",
                prefixIcon: Icons.person,
                validate: _validate,
                textName: textField.name,
              )),
          SizedBox(
            height: 15,
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 30,
              right: 30,
            ),
            child: ReuseTextField(
                controller: _phoneController,
                hintText: "Phone Number",
                prefixIcon: Icons.phone,
                validate: _validate,
                textName: textField.number,
              ),
          ),
          SizedBox(
            height: 15,
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 30,
              right: 30,
            ),
            child: ReuseTextField(
                controller: _emailController,
                hintText: "Email",
                prefixIcon: Icons.email_outlined,
                validate: _validate,
                textName: textField.email,
              )),
          SizedBox(
            height: 15,
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 30,
              right: 30,
            ),
            child:ReuseTextField(
                controller: _passwordController,
                hintText: "Password",
                prefixIcon: Icons.password_outlined,
                validate: _validate,
                textName: textField.password,
              )),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30.0,right: 30.0),
            child: ReuseButton(
                buttonName: "CREATE ACCOUNT",
                onPressed: () {
                  var name = _nameController.text;
                  var phone = _phoneController.text;
                  var email = _emailController.text;
                  var password = _passwordController.text;
                  print(name);
                   setState(() {
                  name.isEmpty ? _validate = true : _validate = false;
                });
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => QuotationAppHome()),
                  );
                }),
          ),
         // SizedBox(height: 40),
        ],
      ),
    );
  }

  
}
