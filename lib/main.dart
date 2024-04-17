import 'package:flutter/material.dart';
import 'package:toop/config/app_routes.dart';
import 'package:toop/pages/edit_profile_page.dart';
import 'package:toop/pages/home_page.dart';
import 'package:toop/pages/login_page.dart';
import 'package:toop/pages/main_page.dart';
import 'package:toop/styles/app_colors.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: AppRoutes.pages,

      theme: ThemeData(
        scaffoldBackgroundColor: AppColors.background,
        fontFamily: 'RedditMono',
        brightness: Brightness.dark,
      ),

      debugShowCheckedModeBanner: false,
      initialRoute: AppRoutes.login,
    );
  }
}
