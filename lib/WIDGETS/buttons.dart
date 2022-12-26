import 'package:flutter/material.dart';
import 'package:twitter_application/CONSTANTS/colors.dart';
import 'package:twitter_application/CONSTANTS/styles.dart';

class Buttons {
  normalB({
    required double w,
    required String title,
    required Function onT,
  }) {
    return MaterialButton(
      minWidth: w,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
      height: 47,
      color: black,
      onPressed: () {
        onT();
      },
      child: Text(
        title,
        style: Styles().normalS(
          fontW: FontWeight.w500,
          fontS: 15,
          color: white,
        ),
      ),
    );
  }

  buttonSmall(
      {required double w,
      required double h,
      required Color color,
      required Color bColor,
      required String title,
      required Function onT,
      required Color textColor}) {
    return SizedBox(
      height: h,
      width: w,
      child: MaterialButton(elevation: 0,
        padding: EdgeInsets.zero,
        onPressed: () {
          onT();
        },
        color: color,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25),
            side:  BorderSide(color: bColor)),
        child: Text(
          title,
          style: Styles().normalS(
            fontW: FontWeight.w600,
            fontS: 15,
            color: textColor,
          ),
        ),
      ),
    );
  }
}
