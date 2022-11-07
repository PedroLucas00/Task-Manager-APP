import 'dart:math';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:task_manager/app/controller/home_controller/home_controller.dart';
import 'package:task_manager/app/ui/android/home/widgets/widgets.dart';

class HomePage extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        automaticallyImplyLeading: false,
      ),
      body: SafeArea(
          child: Container(
        margin: EdgeInsets.only(left: 30, right: 30, top: 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: Get.height * 0.09,
                    width: Get.width * 0.5,
                    child: ListTile(
                      contentPadding: EdgeInsets.all(0),
                      title: Text(
                        'Hi Anna',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 36,
                            fontFamily: 'Nunito-bold'),
                      ),
                      subtitle: Text('Good Morning'),
                    ),
                  ),
                  CircleAvatar(
                    radius: 34,
                    backgroundColor: Colors.black,
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: Get.height * 0.05),
              height: Get.height * 0.5,
              width: Get.width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Last Categories",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 30,
                          fontFamily: 'Nunito-bold')),
                  Row(
                    children: [
                      CategoryCard(
                          Get.height * 0.41,
                          Get.width * 0.4,
                          Colors.blue,
                          'Studies',
                          FontAwesomeIcons.book,
                          EdgeInsets.fromLTRB(0, 10, 10, 0)),
                      Column(
                        children: [
                          CategoryCard(
                              Get.height * 0.2,
                              Get.width * 0.4,
                              Colors.green,
                              'Studies',
                              FontAwesomeIcons.book,
                              EdgeInsets.fromLTRB(10, 10, 0, 0)),
                          CategoryCard(
                              Get.height * 0.2,
                              Get.width * 0.4,
                              Colors.red,
                              'Studies',
                              FontAwesomeIcons.book,
                              EdgeInsets.fromLTRB(10, 10, 0, 0))
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: Get.height * 0.01),
              child: Text('Informations',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 30,
                      fontFamily: 'Nunito-bold')),
            )
          ],
        ),
      )),
      bottomNavigationBar: bottomNavigationBar(),
    );
  }
}
