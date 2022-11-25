import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:task_manager/app/controller/home_controller/home_controller.dart';

final controller = Get.put(HomeController());

Widget bottomNavigationBar() {
  return BottomNavigationBar(
      currentIndex: controller.selectedPageIndex.value,
      onTap: controller.changePageIndex,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      elevation: 6,
      type: BottomNavigationBarType.fixed,
      items: [
        BottomNavigationBarItem(
            icon: Container(
              margin: EdgeInsets.symmetric(vertical: 8),
              child: Image.asset(
                'images/bottomBarIcons/${controller.selectedPageIndex.value == 0 ? "house-actived.png" : "house-desactived.png"}',
                scale: 20,
              ),
            ),
            label: ''),
        BottomNavigationBarItem(
            icon: Image.asset(
              'images/bottomBarIcons/${controller.selectedPageIndex.value == 1 ? "to-do-list-actived.png" : "to-do-list-desactived.png"}',
              scale: 20,
            ),
            label: ''),
        BottomNavigationBarItem(
            icon: Icon(
              FontAwesomeIcons.bell,
              color: controller.selectedPageIndex.value == 2
                  ? Colors.black
                  : Color.fromARGB(255, 144, 144, 144),
              size: 22,
            ),
            label: ''),
        BottomNavigationBarItem(
            icon: Image.asset(
              'images/bottomBarIcons/${controller.selectedPageIndex.value == 3 ? "setting-actived.png" : "setting-desactived.png"}',
              scale: 20,
            ),
            label: '')
      ]);
}

Widget CategoryCard(double height, double width, Color color, String titleText,
    IconData icon, EdgeInsets margin) {
  return Container(
    height: height,
    width: width,
    padding: EdgeInsets.all(20),
    margin: margin,
    decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Color.fromRGBO(169, 169, 169, 0.5),
            offset: new Offset(2.0, 2.0),
            blurRadius: 15,
          )
        ]),
    child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            titleText,
            style: TextStyle(color: Colors.white, fontFamily: 'Nunito-Bold'),
          ),
          Icon(
            icon,
            color: Colors.white,
            size: 35,
          )
        ]),
  );
}
