import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'app/routes/app_pages.dart';

void main() {
  ThemeData lightThemeData = ThemeData(
    colorScheme: const ColorScheme(
      brightness: Brightness.light,
      primary: Color.fromARGB(255, 0, 100, 255),
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
