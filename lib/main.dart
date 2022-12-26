import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:twitter_application/CONSTANTS/colors.dart';
import 'package:twitter_application/PROVIDER/providers.dart';
import 'package:twitter_application/ROUTES/routes.dart';
import 'package:twitter_application/SCREENS/onboarding_screens/select_signup_signin.dart';
import 'package:twitter_application/SCREENS/onboarding_screens/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: providers(),
      child: MaterialApp(
        title: 'Twitter',
        color: primary,
        theme: ThemeData(
          appBarTheme: AppBarTheme(
            iconTheme: IconThemeData(color: black),
          ),
          scaffoldBackgroundColor: white,
          bottomNavigationBarTheme: BottomNavigationBarThemeData(
              backgroundColor: white, elevation: 5),
          primarySwatch: Colors.blue,
        ),
        debugShowCheckedModeBanner: false,
        routes: routes(),
        home: const SplashScreen(),
      ),
    );
  }
}
