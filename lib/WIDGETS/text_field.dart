import 'package:flutter/material.dart';
import 'package:twitter_application/CONSTANTS/colors.dart';
import 'package:twitter_application/CONSTANTS/styles.dart';

class TextStyles{
  normalTFF({
   required String text,
  }){
    return Container(height: 50,
      child: TextField(
        style: Styles().normalS(fontS: 14, fontW: FontWeight.w400, color: black),
       decoration: InputDecoration(
                  labelText: text,
                  labelStyle: Styles().normalS(fontS: 15, fontW: FontWeight.w400, color: g7),
                  border:
                      OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide: BorderSide(color: primary,width: 1))),
      ),
    );
  }
  passwordTFF({
  required String text,
  }){
    return Container(height: 50,
      child: TextField(
        style: Styles().normalS(fontS: 14, fontW: FontWeight.w400, color: black),
       decoration: InputDecoration(
                  labelText: text, labelStyle: Styles().normalS(fontS: 15, fontW: FontWeight.w400, color: g7),
                  suffixIcon: const Icon(Icons.visibility_off,size: 20,color: Colors.black54,),
                  border:
                      OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide: BorderSide(color: primary,width: 1))),
      ),
    );
  }
}