import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task_manager/app/controller/reminder_controller/reminder_controller.dart';

final controller = Get.put(ReminderController());

Widget ListOfMonths() {
  return GetBuilder<ReminderController>(
      init: controller,
      builder: ((controller) {
        return ShaderMask(
          shaderCallback: (Rect rect) {
            return LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [
                Colors.white,
                Colors.transparent,
                Colors.transparent,
                Colors.white
              ],
              stops: [0.0, 0.1, 0.9, 1.0],
            ).createShader(rect);
          },
          blendMode: BlendMode.dstOut,
          child: ListView.separated(
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
              })),
        );
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
          width: Get.width * 0.15,
          height: Get.height * 0.05,
          decoration: BoxDecoration(
              color: controller.selectedDayOfMonth.value == index
                  ? Color.fromARGB(255, 189, 0, 255)
                  : Color.fromARGB(255, 240, 240, 240),
              borderRadius: BorderRadius.all(Radius.circular(8))),
          child: ListTile(
            title: Text(
              '27',
              style: TextStyle(fontFamily: 'Nunito-bold', fontSize: 20),
              textAlign: TextAlign.center,
            ),
            contentPadding: EdgeInsets.all(5),
            tileColor: controller.selectedDayOfMonth.value == index
                ? Color.fromARGB(255, 255, 255, 255)
                : Color.fromRGBO(255, 0, 0, 0),
            subtitle: Text(
              'Sat',
              textAlign: TextAlign.center,
            ),
          ),
        );
      }));
}
