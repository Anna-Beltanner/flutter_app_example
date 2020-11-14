import 'package:flutter/material.dart';
import 'package:flutter_app_example/components/is_have_account.dart';
import 'package:flutter_app_example/components/rounded_button.dart';
import 'package:flutter_app_example/components/rounded_input_field.dart';
import 'package:flutter_app_example/components/rounded_password_field.dart';
import 'package:flutter_app_example/components/text_field_container.dart';
import 'package:flutter_app_example/constants.dart';
import 'package:flutter_app_example/screens/login/components/background.dart';
import 'package:flutter_app_example/screens/signup/signup_screen.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Body extends StatelessWidget {
  const Body({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            "LOGIN",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          SizedBox(height: size.height * 0.03),
          SvgPicture.asset(
            "assets/icons/login.svg",
            height: size.height * 0.35,
          ),
          SizedBox(height: size.height * 0.03),
          RoundedInputField(
            hintText: "Your Email",
            onChanged: (value) {},
          ),
          RoundedPasswordField(
            onChanged: (value) {},
          ),
          RoundedButton(
            text: "LOGIN",
            press: () {},
          ),
          SizedBox(height: size.height * 0.03),
          IsHaveAccount(
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return SignUpScreen();
                  },
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
