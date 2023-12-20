import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'core/route/route.dart';
import 'core/theme/app_colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      getPages: AppRoutes.routes,
      themeMode: ThemeMode.system,
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: mainColor,
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: mainColor
      ),
      initialRoute: Routes.splashScreen,
    );
  }
}

