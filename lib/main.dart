import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task_manager/app/bindings/home_binging.dart';
import 'package:task_manager/app/routes/app_pages.dart';
import 'package:task_manager/app/ui/android/home/home_page.dart';
import 'package:task_manager/app/ui/android/login/login_page.dart';
import 'package:task_manager/app/ui/theme/app_theme.dart';

void main() {
  runApp(
    GetMaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: Routes.LOGIN,
        theme: appThemeData,
        defaultTransition: Transition.fade,
        initialBinding: HomeBinding(),
        getPages: AppPages.pages,
        home: LoginPage(),
    )
  );
}