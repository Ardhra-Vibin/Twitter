import 'package:flutter/material.dart';
import 'package:twitter_application/CONSTANTS/colors.dart';
import 'package:twitter_application/CONSTANTS/styles.dart';
import 'package:twitter_application/SCREENS/onboarding_screens/add_profile_screen.dart';
import 'package:twitter_application/WIDGETS/buttons.dart';
import 'package:twitter_application/WIDGETS/text_field.dart';

class PasswordSetScreen extends StatelessWidget {
  const PasswordSetScreen({Key? key}) : super(key: key);
  static String routeName = "password_set_screen";

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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  left: 25,
                  right: 25,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "You'll  need a password",
                      style: Styles().normalS(
                          fontS: 25, fontW: FontWeight.bold, color: black),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Text(
                      "Make sure it's 8 characters or more.",
                      style: Styles().normalS(
                          fontS: 15,
                          fontW: FontWeight.normal,
                          color: Colors.black54),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    TextStyles().passwordTFF(text: "Password"),
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
                                  context, AddProfileImageScreen.routeName);
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
