import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:task_manager/app/controller/sign_up_controller.page/sign_up_controller.dart';
import 'package:task_manager/app/ui/theme/app_theme.dart';

class SignUpPage extends GetView<SignUpController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          //automaticallyImplyLeading: false,
          iconTheme: IconThemeData(color: Colors.black),
        ),
        body: SafeArea(
            child: SingleChildScrollView(
          child: Container(
            width: Get.width,
            child: Column(
              children: [
                Image.asset('images/sign_up.png', width: Get.width * 0.65,),
                Container(
                  margin: EdgeInsets.fromLTRB(30, 0, 30, 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Sign Up',
                        style:
                            TextStyle(fontSize: 36, fontFamily: 'Nunito-Bold'),
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 20, top: 30),
                        child: TextField(
                          decoration: InputDecoration(
                              prefixIcon: Icon(Icons.person_outline_rounded),
                              hintText: 'Name'),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 20),
                        child: TextField(
                          decoration: InputDecoration(
                              prefixIcon: Icon(Icons.work_outline_rounded),
                              hintText: 'Work'),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 20),
                        child: TextField(
                          decoration: InputDecoration(
                              prefixIcon: Icon(Icons.alternate_email_rounded),
                              hintText: 'Email ID'),
                        ),
                      ),
                      TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                            prefixIcon: Icon(Icons.lock_outline_rounded),
                            hintText: 'Password',
                            suffixIcon: IconButton(
                              onPressed: () {},
                              icon: Icon(
                                FontAwesomeIcons.eyeSlash,
                                size: 18,
                              ),
                            )),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Checkbox(value: false, onChanged: (value) {}),
                            TextButton(
                              child: Text(
                                'Li e condordo com os termos de uso',
                                style: TextStyle(
                                    color: Colors.black,
                                    decoration: TextDecoration.underline),
                              ),
                              style: ButtonStyle(
                                  padding: MaterialStateProperty.all<
                                      EdgeInsetsGeometry>(EdgeInsets.all(0))),
                              onPressed: () => {},
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 20),
                        child: ElevatedButton(
                            onPressed: () {},
                            style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all<Color>(
                                        appThemeData.primaryColor),
                                padding: MaterialStateProperty.all(
                                    EdgeInsets.all(20)),
                                shape: MaterialStateProperty.all(
                                    RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(15))),
                                elevation: MaterialStateProperty.all<double>(0),
                                alignment: Alignment.center),
                            child: Container(
                              width: Get.width,
                              child: Center(
                                child: Text(
                                  'Sign up',
                                  style: TextStyle(
                                      fontSize: 18, fontFamily: 'Nunito-Bold'),
                                ),
                              ),
                            )),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        )));
  }
}
