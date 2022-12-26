import 'dart:async';
import 'package:flutter/material.dart';
import 'package:twitter_application/CONSTANTS/colors.dart';
import 'package:twitter_application/CONSTANTS/styles.dart';
import 'package:twitter_application/SCREENS/onboarding_screens/select_signup_signin.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(const Duration(milliseconds: 3100), () {
      Navigator.pushNamedAndRemoveUntil(
          context, SelectSignUpOrSigningScreen.routeName, (route) => false);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              SizedBox(
                height: 70,
                width: 70,
                child: TweenAnimationBuilder<double>(
                  tween: Tween<double>(begin: 0.0, end: 1),
                  duration: const Duration(milliseconds: 2700),
                  builder: (context, value, _) => CircularProgressIndicator(
                    value: value,
                    strokeWidth: 2,
                    backgroundColor: Colors.transparent,
                    valueColor: AlwaysStoppedAnimation(primary),
                  ),
                ),
              ),
              Center(
                  child: Image.asset(
                "assets/twitter.png",
                height: 25,
              ))
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            "Loading...",
            style: Styles()
                .normalS(fontS: 16, fontW: FontWeight.w600, color: black),
          )
        ],
      ),
    );
  }
}
