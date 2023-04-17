import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'app/routes/app_pages.dart';

void main() {
  ThemeData lightThemeData = ThemeData(
    textTheme: const TextTheme(
      labelLarge: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w700,
      ),
    ),
    colorScheme: const ColorScheme(
      brightness: Brightness.light,
      primary: Color.fromARGB(255, 100, 0, 255),
      onPrimary: Colors.white,
      secondary: Color.fromARGB(255, 255, 100, 100),
      onSecondary: Colors.white,
      error: Color.fromARGB(255, 255, 0, 0),
      onError: Colors.white,
      background: Colors.white,
      onBackground: Colors.black,
      surface: Colors.grey,
      onSurface: Colors.black,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        minimumSize: const Size(0, 40),
      ),
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        minimumSize: const Size(0, 40),
      ),
    ),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        minimumSize: const Size(0, 40),
      ),
    ),
  );

  runApp(
    GetMaterialApp(
      title: "Application",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
      theme: lightThemeData,
    ),
  );
}
