import 'package:flutter/material.dart';
import 'package:twitter_application/SCREENS/main/main_screen.dart';
import 'package:twitter_application/SCREENS/gmail_screens/gmail_screen.dart';
import 'package:twitter_application/SCREENS/home/home.dart';
import 'package:twitter_application/SCREENS/notification_screen/notification_screen.dart';
import 'package:twitter_application/SCREENS/record_screens/record_screens.dart';
import 'package:twitter_application/SCREENS/search_screens/search_screen.dart';

class DashboardProvider extends ChangeNotifier{
  List<Widget>dashboardPages = [
    const HomeScreen(),
    const SearchScreen(),
    const RecordScreen(),
    const NotificationScreen(),
    const GmailScreen(),
  ];
  int curIndex = 0;
  changeBottom(int index){
    curIndex = index;
    notifyListeners();

  }
}