import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task_manager/app/controller/reminder_controller/reminder_controller.dart';
import 'package:task_manager/app/ui/android/reminder/widgets/widgets.dart';

class ReminderPage extends GetView<ReminderController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 244, 244, 244),
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          automaticallyImplyLeading: false,
        ),
        body: SafeArea(
            child: Container(
          height: Get.height,
          width: Get.width,
          padding: EdgeInsets.only(left: 30, right: 30, top: 0),
          child: Column(
            children: [
              Container(
                width: Get.width,
                color: Colors.white,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("My reminders",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 36,
                            fontFamily: 'Nunito-bold')),
                    SizedBox(
                      width: Get.width * 0.11,
                      child: ElevatedButton(
                          onPressed: () {},
                          child: Icon(
                            Icons.add,
                            size: 25,
                          ),
                          style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  Color.fromARGB(255, 189, 0, 255)),
                              padding:
                                  MaterialStateProperty.all(EdgeInsets.all(10)),
                              shape: MaterialStateProperty.all(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(15))),
                              elevation: MaterialStateProperty.all<double>(0),
                              alignment: Alignment.center)),
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: Get.height * 0.02),
                width: Get.width,
                height: Get.height * 0.05,
                color: Color.fromARGB(255, 255, 255, 255),
                child: ListOfMonths(),
              ),
              Container(
                child: ListOfDaysOfMonths(),
              )
            ],
          ),
        )));
  }
}
