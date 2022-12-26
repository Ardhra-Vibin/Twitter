import 'package:flutter/material.dart';
import 'package:twitter_application/CONSTANTS/colors.dart';
import 'package:twitter_application/CONSTANTS/styles.dart';
import 'package:twitter_application/SCREENS/main/main_screen.dart';
import 'package:twitter_application/WIDGETS/buttons.dart';

class AddProfileImageScreen extends StatelessWidget {
  const AddProfileImageScreen({Key? key}) : super(key: key);
  static String routeName = 'add_profile_screen';

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: white,
        elevation: 0,
        centerTitle: true,
        title: Image.asset(
          "assets/twitter.png",
          height: 25,
        ),
      ),
      body: Padding(
        padding:
            const EdgeInsets.only(top: 20, bottom: 10),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                      "Pick a profile picture",
                      style: Styles().normalS(
                          fontS: 25, fontW: FontWeight.bold, color: black),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Text(
                      "Have a favorite selfie? Upload it now.",
                      style: Styles().normalS(
                          fontS: 15,
                          fontW: FontWeight.normal,
                          color: Colors.black54),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    Center(
                        child: Image.asset(
                      'assets/user.png',
                      height: w/2.5,
                    ))
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
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Buttons().buttonSmall(
                            w: 130,
                            bColor: g3,
                            title: "Skip for now",
                            textColor: black,
                            onT: () {
                              Navigator.pushNamed(context, MainScreen.routeName);
                            },
                            color: white,
                            h: 40),
                        Buttons().buttonSmall(
                            bColor: Colors.transparent,
                            w: 75,
                            title: "Next",
                            onT: () {
                              Navigator.pushNamed(context, MainScreen.routeName);
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
