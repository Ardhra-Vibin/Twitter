import 'package:flutter/material.dart';

class Styles{
  normalS({
    required double fontS,
    required FontWeight fontW,
    required Color color,
  }) {
    return TextStyle(
      fontSize: fontS,
      fontWeight: fontW,
      color: color,
    );
  }
}