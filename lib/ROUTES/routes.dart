import 'package:flutter/material.dart';
import 'package:twitter_application/SCREENS/main/main_screen.dart';
import 'package:twitter_application/SCREENS/home/home.dart';
import 'package:twitter_application/SCREENS/onboarding_screens/add_profile_screen.dart';
import 'package:twitter_application/SCREENS/onboarding_screens/otp_verify_screen.dart';
import 'package:twitter_application/SCREENS/onboarding_screens/password_screen.dart';
import 'package:twitter_application/SCREENS/onboarding_screens/select_signup_signin.dart';
import 'package:twitter_application/SCREENS/onboarding_screens/signup_screen.dart';

Map<String, WidgetBuilder> routes(){
  return {
    SelectSignUpOrSigningScreen.routeName :(ctx) => const SelectSignUpOrSigningScreen(),
    SignUpScreen.routeName :(ctx) => const SignUpScreen(),
    VerifyOtpScreen.routeName :(ctx) => const VerifyOtpScreen(),
    PasswordSetScreen.routeName :(ctx) => const PasswordSetScreen(),
    AddProfileImageScreen.routeName :(ctx) => const AddProfileImageScreen(),
    MainScreen.routeName :(ctx) => const MainScreen(),
    HomeScreen.routeName :(ctx) => const HomeScreen(),
  };
}