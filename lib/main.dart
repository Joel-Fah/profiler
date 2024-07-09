import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:profiler/utils/constants.dart';
import 'package:profiler/views/screens/auth/login.dart';
import 'package:profiler/views/screens/home.dart';
import 'package:get/get.dart';
import 'package:profiler/views/screens/onboard.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Profiler',
      theme: ThemeData(
        fontFamily: GoogleFonts.urbanist().fontFamily,
        textTheme: GoogleFonts.urbanistTextTheme(),
        colorScheme: ColorScheme.fromSeed(seedColor: seedColor),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(borderRadius: borderRadius),
            backgroundColor: seedColor,
            padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 16.0),
          )
        )
      ),
      builder: (context, child) {
        return MediaQuery(
          data: MediaQuery.of(context).copyWith(textScaler: TextScaler.linear(1.15)),
          child: child!,
        );
      },
      initialRoute: OnboardPage.routeName,
      routes: {
        HomePage.routeName: (context) => HomePage(),
        OnboardPage.routeName: (context) => OnboardPage(),
        LoginPage.routeName: (context) => LoginPage(),
      },
    );
  }
}
