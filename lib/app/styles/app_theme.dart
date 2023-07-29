import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

ThemeData defaultTheme = ThemeData(
    scaffoldBackgroundColor: Colors.white,
    useMaterial3: true,
    primaryColor: Colors.blueAccent,
    appBarTheme: AppBarTheme(
        backgroundColor: Colors.blueAccent,
        foregroundColor: Colors.white,
        elevation: 0,
        titleTextStyle: TextStyle(
            fontSize: 22.sp,
            fontFamily: 'Roboto',
            fontWeight: FontWeight.w900)),
    textTheme: TextTheme(
      titleLarge: TextStyle(
          fontSize: 26.sp, fontFamily: 'Roboto', fontWeight: FontWeight.w900),
      titleMedium: TextStyle(
          fontSize: 20.sp, fontFamily: 'Roboto', fontWeight: FontWeight.w800),
      labelMedium: TextStyle(
          fontSize: 16.sp, fontFamily: 'Roboto', fontWeight: FontWeight.w800),
      labelSmall: TextStyle(
          fontSize: 14.sp, fontFamily: 'Roboto', fontWeight: FontWeight.w600),
      bodyMedium: TextStyle(fontSize: 14.sp, fontFamily: 'Roboto'),
      bodySmall: TextStyle(fontSize: 12.sp, fontFamily: 'Roboto'),
    ));
