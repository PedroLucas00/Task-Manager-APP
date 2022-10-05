import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(
    GetMaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: Routes.SPLASH,
        theme: appThemeData,
        defaultTransition: Transition.fade,
        initialBinding: SplashBinding(),
        getPages: AppPages.pages,
        home: SplashPage(),
    )
  );
}