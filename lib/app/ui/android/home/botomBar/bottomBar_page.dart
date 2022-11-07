import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task_manager/app/controller/home_controller/home_controller.dart';
import 'package:task_manager/app/ui/android/home/home_page.dart';
import 'package:task_manager/app/ui/android/home/widgets/widgets.dart';

class BottomBarPage extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    List<Widget> pageOptions = <Widget>[
      HomePage(),
      HomePage(),
      HomePage(),
      HomePage(),
    ];

    return Scaffold(
        body: GetBuilder<HomeController>(
            init: HomeController(),
            builder: (controller) {
              return Scaffold(
                body: pageOptions.elementAt(controller.selectedPageIndex.value),
                bottomNavigationBar: bottomNavigationBar(),
              );
            }));
  }
}
