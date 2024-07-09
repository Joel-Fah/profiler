import 'package:flutter/material.dart';

// Colors

Color scaffoldBgColor = Color(0xFFFBFAFF);

// States
const Color successColor = Color(0xFF0F9D58);
const Color errorColor = Color(0xFFDB4437);

// Primaries
Color seedColor = Color(0xFF6424EC);

MaterialColor primaryColor = MaterialColor(seedColor.value, <int, Color>{
  50: Color(0xFFE0D3FB),
  100: Color(0xFFCBB6F9),
  200: Color(0xFFB191F5),
  300: Color(0xFF986DF2),
  400: Color(0xFF7E48EF),
  500: Color(0xFF531EC5),
  600: Color(0xFF43189D),
  700: Color(0xFF321276),
  800: Color(0xFF210C4F),
  900: Color(0xFF14072F),
});

// Border Radii
BorderRadius borderRadius = BorderRadius.circular(16.0);
BorderRadius bottomSheetTopRadius =
    BorderRadius.vertical(top: Radius.circular(28.0));

// Images
String logo = 'assets/images/logo.png';
String onboardBg = 'assets/images/onboard_bg.png';
String appleLogo = 'assets/images/apple_logo.png';
String googleLogo = 'assets/images/google_logo.png';
String picholder = 'assets/images/picholder.png';
String userAvatars = 'assets/images/user_avatars.png';

// Shadows
BoxShadow primaryShadow = BoxShadow(
  color: Colors.black.withOpacity(0.08),
  blurRadius: 8.0,
  offset: Offset(0, 2),
);
