import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task_manager/app/controller/reminder_controller/reminder_controller.dart';

final controller = Get.put(ReminderController());

Widget ListOfMonths() {
  return GetBuilder<ReminderController>(
      init: controller,
      builder: ((controller) {
        return ListView.separated(
            itemCount: controller.listOfMonths.length,
            scrollDirection: Axis.horizontal,
            separatorBuilder: ((context, index) {
              return SizedBox(width: Get.width * 0.05);
            }),
            itemBuilder: ((context, index) {
              final data = controller.listOfMonths[index];

              return Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: controller.selectedMonth.value == index
                        ? Color.fromRGBO(189, 0, 255, 0.2)
                        : Color.fromARGB(255, 255, 255, 255),
                    borderRadius: BorderRadius.circular(10)),
                child: Text(
                  data,
                  style: TextStyle(
                      color: controller.selectedMonth.value == index
                          ? Color.fromARGB(255, 189, 0, 255)
                          : Color.fromARGB(255, 144, 144, 144),
                      fontFamily: 'Nunito-bold'),
                ),
              );
            }));
      }));
}

Widget ListOfDaysOfMonths() {
  return ListView.separated(
      itemCount: 5,
      scrollDirection: Axis.horizontal,
      separatorBuilder: ((context, index) {
        return SizedBox(width: Get.width * 0.05);
      }),
      itemBuilder: ((context, index) {
        return Container(
          child: ListTile(
            title: Text(''),
            subtitle: Text(''),
          ),
        );
      }));
}
