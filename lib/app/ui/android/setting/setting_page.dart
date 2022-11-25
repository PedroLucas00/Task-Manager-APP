import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task_manager/app/controller/setting_controller/setting_controller.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SettingPage extends GetView<SettingController> {
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
              Text("Settings",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 36,
                      fontFamily: 'Nunito-bold')),
              SizedBox(
                height: Get.height * 0.05,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        backgroundColor: Color.fromRGBO(0, 224, 255, 0.20),
                        radius: 26,
                        child: Icon(
                          FontAwesomeIcons.earth,
                          size: 22,
                          color: Color.fromARGB(255, 0, 56, 255),
                        ),
                      ),
                      SizedBox(
                        width: Get.width * 0.02,
                      ),
                      Text('Language'),
                    ],
                  ),
                  Row(
                    children: [
                      Text('English', style: TextStyle(
                        color: Color.fromARGB(255, 144, 144, 144)
                      ),),
                      SizedBox(
                        width: Get.width * 0.04,
                      ),
                      SizedBox(
                        width: Get.width * 0.12,
                        child: ElevatedButton(
                            onPressed: () {},
                            child: Icon(
                              Icons.arrow_forward_ios_rounded,
                              size: 20,
                              color: Colors.black,
                            ),
                            style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all<Color>(
                                        Color.fromARGB(255, 240, 240, 240)),
                                padding: MaterialStateProperty.all(
                                    EdgeInsets.only(top: 15, bottom: 15)),
                                shape: MaterialStateProperty.all(
                                    RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(15))),
                                elevation: MaterialStateProperty.all<double>(0),
                                alignment: Alignment.center)),
                      ),
                    ],
                  )
                ],
              ),
              SizedBox(
                height: Get.height * 0.03,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        backgroundColor: Color.fromRGBO(189, 0, 255, 0.26),
                        radius: 26,
                        child: Icon(
                          FontAwesomeIcons.solidMoon,
                          size: 22,
                          color: Color.fromARGB(255, 189, 0, 255),
                        ),
                      ),
                      SizedBox(
                        width: Get.width * 0.02,
                      ),
                      Text('Dark-Mode'),
                    ],
                  ),
                  Row(
                    children: [
                      Text('On'),
                      SizedBox(
                        width: Get.width * 0.02,
                      ),
                      CupertinoSwitch(value: false, onChanged: (value) {}),
                    ],
                  )
                ],
              ),
              SizedBox(
                height: Get.height * 0.03,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        backgroundColor: Color.fromRGBO(199, 0, 0, 0.2),
                        radius: 26,
                        child: Icon(
                          FontAwesomeIcons.lifeRing,
                          size: 22,
                          color: Color.fromARGB(255, 199, 0, 0),
                        ),
                      ),
                      SizedBox(
                        width: Get.width * 0.02,
                      ),
                      Text('Help'),
                    ],
                  ),
                  SizedBox(
                    width: Get.width * 0.12,
                    child: ElevatedButton(
                        onPressed: () {},
                        child: Icon(
                          Icons.arrow_forward_ios_rounded,
                          size: 20,
                          color: Colors.black,
                        ),
                        style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
                                Color.fromARGB(255, 240, 240, 240)),
                            padding:
                                MaterialStateProperty.all(EdgeInsets.only(top: 15, bottom: 15)),
                            shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15))),
                            elevation: MaterialStateProperty.all<double>(0),
                            alignment: Alignment.center)),
                  )
                ],
              )
            ],
          ),
        )));
  }
}
