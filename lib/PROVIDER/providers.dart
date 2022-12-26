import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';
import 'package:twitter_application/PROVIDER/dashboard_provider.dart';

List<SingleChildWidget> providers (){
  return [
    ChangeNotifierProvider.value(value: DashboardProvider()),
  ];
}