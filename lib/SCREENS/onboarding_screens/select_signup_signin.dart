import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:twitter_application/CONSTANTS/colors.dart';
import 'package:twitter_application/CONSTANTS/styles.dart';
import 'package:twitter_application/SCREENS/onboarding_screens/signup_screen.dart';
import 'package:twitter_application/WIDGETS/buttons.dart';

class SelectSignUpOrSigningScreen extends StatelessWidget {
  const SelectSignUpOrSigningScreen({Key? key}) : super(key: key);
  static String routeName = '/select_signup_signing_screen';

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Padding(
        padding:
            const EdgeInsets.only(left: 40, right: 40, top: 50, bottom: 40),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Center(
                  child: Image.asset(
                "assets/twitter.png",
                height: 25,
              )),
              Column(
                children: [
                  Text(
                    "See what's happening in the world right now.",
                    style: Styles().normalS(
                        fontS: 30, fontW: FontWeight.bold, color: black),
                  ),
                  const SizedBox(
                    height: 55,
                  ),
                  Buttons().normalB(
                      w: w,
                      title: "Create account",
                      onT: () {
                        Navigator.pushNamed(context, SignUpScreen.routeName);
                      }),
                ],
              ),
              RichText(
                text: TextSpan(
                    text: 'Have an account already?',
                    style: Styles()
                        .normalS(fontS: 14, fontW: FontWeight.w400, color: g6),
                    children: <TextSpan>[
                      TextSpan(
                          text: ' Log in',
                          style: Styles().normalS(
                              fontS: 14,
                              fontW: FontWeight.w500,
                              color: primary),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              // Navigator.pushNamed(context, LoginS)
                            })
                    ]),
              ),
            ]),
      ),
    );
  }
}
