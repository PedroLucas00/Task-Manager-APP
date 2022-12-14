import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task_manager/app/controller/home_controller/home_controller.dart';
import 'package:task_manager/app/ui/android/category/category_page.dart';
import 'package:task_manager/app/ui/android/home/home_page.dart';
import 'package:task_manager/app/ui/android/home/widgets/widgets.dart';
import 'package:task_manager/app/ui/android/reminder/reminder_page.dart';
import 'package:task_manager/app/ui/android/setting/setting_page.dart';

class BottomBarPage extends GetView<HomeController> {
  List<Widget> pageOptions = <Widget>[
    HomePage(),
    CategoryPage(),
    ReminderPage(),
    SettingPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: GetX<HomeController>(
            init: HomeController(),
            builder: (controller) {
              return Scaffold(
                body: pageOptions.elementAt(controller.selectedPageIndex.value),
                bottomNavigationBar: bottomNavigationBar(),
              );
            }));
  }
}
