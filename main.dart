import 'package:flutter/material.dart';
import 'package:t20wc/screens/home_screen.dart';
import 'package:t20wc/screens/teams_screen.dart';
import 'package:t20wc/utilities/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'T20 World Cup 2024',
      theme: ThemeData(
        primaryColor: AppColors.primaryColor,
        appBarTheme: const AppBarTheme(
          backgroundColor: AppColors.primaryColor,
        ),
      ),
      home: const HomeScreen(),
    );
  }
}