import 'package:flutter/material.dart';
import 'package:twitter_application/CONSTANTS/colors.dart';
import 'package:twitter_application/CONSTANTS/styles.dart';
import 'package:twitter_application/SCREENS/onboarding_screens/otp_verify_screen.dart';
import 'package:twitter_application/WIDGETS/buttons.dart';
import 'package:twitter_application/WIDGETS/text_field.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);
  static String routeName = '/sign_up_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: white,
        elevation: 0,
        centerTitle: true,
        title: Image.asset(
          "assets/twitter.png",
          height: 25,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 20, bottom: 10),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  left: 40,
                  right: 40,
                ),
                child: Text(
                  "Create your account",
                  style: Styles()
                      .normalS(fontS: 25, fontW: FontWeight.bold, color: black),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 40,
                  right: 40,
                ),
                child: Column(
                  children: [
                    TextStyles().normalTFF(text: "Name"),
                    const SizedBox(
                      height: 20,
                    ),
                    TextStyles()
                        .normalTFF(text: "Phone number or email address"),
                    const SizedBox(
                      height: 20,
                    ),
                    TextStyles().normalTFF(text: "Date of birth"),
                  ],
                ),
              ),
              Container(),
              Column(
                children: [
                  Divider(color: g4),
                  const SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 15,
                      right: 15,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Buttons().buttonSmall(
                            bColor: Colors.transparent,
                            w: 75,
                            title: "Next",
                            onT: () {
                              Navigator.pushNamed(
                                  context, VerifyOtpScreen.routeName);
                            },
                            color: black,
                            h: 40,
                            textColor: white)
                      ],
                    ),
                  )
                ],
              ),
            ]),
      ),
    );
  }
}
