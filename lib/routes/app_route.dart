import 'package:consumer/Pages/Logo_loading_Screen_at_starting.dart';
import 'package:consumer/Pages/onboard.dart';
import 'package:flutter/material.dart';


class AppRoutes{
  static String splashscreen="/splash_Screen";

  static String onboarding="idd";

  static Map<String,WidgetBuilder> routes={
    splashscreen:(context)=>const SplashScreen(),
    onboarding:(context)=>const OnBoard(),
  };
}