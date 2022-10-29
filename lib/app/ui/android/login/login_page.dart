import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:task_manager/app/controller/login_controller/login_controller.dart';
import 'package:task_manager/app/ui/theme/app_theme.dart';

class LoginPage extends GetView<LoginController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          automaticallyImplyLeading: false,
        ),
        body: SafeArea(
            child: SingleChildScrollView(
          child: Container(
            width: Get.width,
            child: Column(
              children: [
                Image.asset('images/login.png'),
                Container(
                  margin: EdgeInsets.fromLTRB(30, 30, 30, 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Login',
                        style:
                            TextStyle(fontSize: 36, fontFamily: 'Nunito-Bold'),
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 20, top: 30),
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
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          TextButton(
                              onPressed: () {},
                              child: Text(
                                'Forgot password?',
                                style:
                                    TextStyle(color: appThemeData.primaryColor),
                              ))
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
                  child: ElevatedButton(
                      onPressed: () {},
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                              appThemeData.primaryColor),
                          padding:
                              MaterialStateProperty.all(EdgeInsets.all(20)),
                          shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15))),
                          elevation: MaterialStateProperty.all<double>(0),
                          alignment: Alignment.center),
                      child: Container(
                        width: Get.width,
                        child: Center(
                          child: Text(
                            'Login',
                            style: TextStyle(
                                fontSize: 18, fontFamily: 'Nunito-Bold'),
                          ),
                        ),
                      )),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'New to TaskManager?',
                      style:
                          TextStyle(color: Color.fromARGB(255, 110, 110, 110)),
                    ),
                    TextButton(
                        onPressed: () {
                          Get.toNamed('/sign_up');
                        },
                        child: Text(
                          'Register',
                          style: TextStyle(color: appThemeData.primaryColor),
                        ))
                  ],
                ),
              ],
            ),
          ),
        )));
  }
}
