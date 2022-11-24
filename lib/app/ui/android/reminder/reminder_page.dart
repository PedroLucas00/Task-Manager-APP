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
          //padding: EdgeInsets.only(left: 30, right: 30, top: 0),
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20)),
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromRGBO(169, 169, 169, 0.2),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 3), // changes position of shadow
                    )
                  ],
                ),
                child: Column(
                  children: [
                    Container(
                      width: Get.width,
                      padding: EdgeInsets.only(left: 30, right: 30, top: 0),
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
                                    backgroundColor:
                                        MaterialStateProperty.all<Color>(
                                            Color.fromARGB(255, 189, 0, 255)),
                                    padding: MaterialStateProperty.all(
                                        EdgeInsets.all(10)),
                                    shape: MaterialStateProperty.all(
                                        RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(15))),
                                    elevation:
                                        MaterialStateProperty.all<double>(0),
                                    alignment: Alignment.center)),
                          )
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(
                          top: Get.height * 0.04,
                          right: 15,
                          left: 15,
                          bottom: 10),
                      width: Get.width,
                      height: Get.height * 0.1,
                      child: ListOfMonths(),
                    ),
                    Divider(
                      color: Color.fromARGB(255, 144, 144, 144),
                    ),
                    Container(
                      width: Get.width,
                      height: Get.height * 0.18,
                      padding: EdgeInsets.only(
                          top: Get.height * 0.02,
                          right: 15,
                          left: 15,
                          bottom: 15),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(20),
                              bottomRight: Radius.circular(20))),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(child: ListOfDaysOfMonths()),
                          Container(
                            margin: EdgeInsets.only(top: Get.height * 0.03),
                            width: Get.width * 0.2,
                            height: Get.height * 0.02,
                            decoration: BoxDecoration(
                                color: Color.fromARGB(226, 226, 226, 226),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20))),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        )));
  }
}
