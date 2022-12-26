import 'package:flutter/material.dart';

class DecorationWidget{

  gradientDecoration(){
    return  BoxDecoration(
      borderRadius: BorderRadius.circular(15),
      gradient: LinearGradient(
        colors: [  Color(0xFF9364fa),
          Color(0xFFdb3fce),


          Color(0xFF3aa8f7),Color(0xFF5487fa),
        ],
        begin: FractionalOffset(.0, 0,),
        end: FractionalOffset(1.0, .5),
        stops: [0.0, 0.0,3,.5],
        tileMode: TileMode.mirror,
      ),
    );
  }
}