import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:twitter_application/CONSTANTS/colors.dart';
import 'package:twitter_application/PROVIDER/dashboard_provider.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<DashboardProvider>(
      builder: ((context, provider, child) {
        return BottomNavigationBar(
            showSelectedLabels: false,
            showUnselectedLabels: false,
            onTap: (val) {
              provider.changeBottom(val);
            }, elevation: 0,
            items: [
              BottomNavigationBarItem(
                  icon: Image.asset(
                    provider.curIndex == 0
                        ? 'assets/home2.png'
                        : 'assets/home.png',
                    color: black,
                    height: 22,
                  ),
                  label: ""),
              BottomNavigationBarItem(
                icon: Image.asset(
                  provider.curIndex == 1
                      ? 'assets/search2.png'
                      : 'assets/search.png',
                  color: black,
                  height: 22,
                ),
                label: "",
              ),
              BottomNavigationBarItem(
                icon: Image.asset(
                  provider.curIndex == 2 ? 'assets/mic2.png' : 'assets/mic.png',
                  color: black,
                  height: 22,
                ),
                label: "",
              ),
              BottomNavigationBarItem(
                icon: Image.asset(
                  provider.curIndex == 3
                      ? 'assets/bell22.png'
                      : 'assets/bell.png',
                  color: black,
                  height: 22,
                ),
                label: "",
              ),
              BottomNavigationBarItem(
                icon: Image.asset(
                  provider.curIndex == 4
                      ? 'assets/mail2.png'
                      : 'assets/mail.png',
                  color: black,
                  height: 22,
                ),
                label: "",
              ),
            ]);
      }),
    );
  }
}
