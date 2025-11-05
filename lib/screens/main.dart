import 'package:ecommerace_app1/screens/home/view/home_screen.dart';
import 'package:ecommerace_app1/screens/login/view/login_screen.dart';
import 'package:ecommerace_app1/screens/profile/view/profile_screen.dart';
import 'package:ecommerace_app1/screens/register/view/register_screen.dart';
import 'package:ecommerace_app1/screens/splash/view/splash_screen.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(const ECommercerApp());
}

class ECommercerApp extends StatelessWidget {
  const ECommercerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'HomeHaven',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: const Color(0xFF156651),
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFF156651),
          foregroundColor: Colors.white,
          elevation: 0,
        ),
      ),
      initialRoute: " / SplashScreen()",
      routes: {
        ' / SplashScreen()': (context) => SplashScreen(),
        ' / RegisterScreen()': (context) => RegisterScreen(),
        ' / LoginScreen()': (context) => LoginScreen(),
        ' / HomeScreen()': (context) => HomeScreen(),
        ' / ProfileScreen()': (context) => ProfileScreen(),
      },
    );
  }
}
