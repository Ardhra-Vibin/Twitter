import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:provider/provider.dart';
import 'package:twitter_application/CONSTANTS/colors.dart';
import 'package:twitter_application/CONSTANTS/styles.dart';
import 'package:twitter_application/PROVIDER/dashboard_provider.dart';
import 'package:twitter_application/SCREENS/main/bottom_navbar.dart';
import 'package:twitter_application/SCREENS/main/bottom_navbar.dart';
import 'package:twitter_application/WIDGETS/decoration.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);
  static String routeName = "main_screen";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer<DashboardProvider>(builder: (context,provider, child){
        return provider.dashboardPages[provider.curIndex];
      }),
         bottomNavigationBar: const BottomNavBar(),
        );
  }
}
