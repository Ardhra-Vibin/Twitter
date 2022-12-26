import 'package:flutter/material.dart';
import 'package:twitter_application/CONSTANTS/colors.dart';
import 'package:twitter_application/CONSTANTS/styles.dart';
import 'package:twitter_application/SCREENS/onboarding_screens/password_screen.dart';
import 'package:twitter_application/WIDGETS/buttons.dart';
import 'package:twitter_application/WIDGETS/text_field.dart';

class VerifyOtpScreen extends StatelessWidget {
  const VerifyOtpScreen({Key? key}) : super(key: key);
  static String routeName = "/verify_otp_screen";

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
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "We sent you a code",
                      style: Styles().normalS(
                          fontS: 25, fontW: FontWeight.bold, color: black),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Text(
                      "Enter it below to verify +971 50 5555555",
                      style: Styles().normalS(
                          fontS: 15, fontW: FontWeight.normal, color: g7),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    TextStyles().normalTFF(text: "Waiting for SMS to arrive"),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "Don't receive SMS?",
                          style: Styles().normalS(
                              fontS: 14,
                              fontW: FontWeight.normal,
                              color: primary),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
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
                                  context, PasswordSetScreen.routeName);
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
