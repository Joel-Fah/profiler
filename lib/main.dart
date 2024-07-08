import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:profiler/utils/constants.dart';
import 'package:profiler/views/screens/home.dart';
import 'package:get/get.dart';

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
        scaffoldBackgroundColor: Color(0xFFFBFAFF),
        colorScheme: ColorScheme.fromSeed(seedColor: seedColor),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(borderRadius: borderRadius),
            backgroundColor: seedColor,
            padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 16.0),
          )
        )
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(),
      },
    );
  }
}
