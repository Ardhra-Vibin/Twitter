import 'package:flutter/material.dart';
import 'package:twitter_application/CONSTANTS/colors.dart';
import 'package:twitter_application/CONSTANTS/styles.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
      body: Center(
          child: Text(
        "Notification Screen",
        style:
            Styles().normalS(fontS: 14, fontW: FontWeight.w600, color: black),
      )),
    );
  }
}
