import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:task_manager/app/controller/category_controller/category_controller.dart';
import 'package:task_manager/app/ui/android/category/widgets/widgets.dart';

class CategoryPage extends GetView<CategoryController> {
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
          height: Get.height,
          width: Get.width,
          margin: EdgeInsets.only(left: 30, right: 30, top: 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Categories",
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
                                  Color.fromARGB(255, 199, 0, 0)),
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
                margin: EdgeInsets.only(top: Get.height * 0.05),
                decoration: BoxDecoration(
                    color: Color.fromRGBO(169, 169, 169, 0.2),
                    borderRadius: BorderRadius.circular(15)),
                child: TextField(
                  textAlignVertical: TextAlignVertical.center,
                  decoration: InputDecoration(
                      hintText: 'Search',
                      hintStyle:
                          TextStyle(color: Color.fromARGB(255, 179, 179, 179)),
                      border: InputBorder.none,
                      prefixIcon: Icon(FontAwesomeIcons.search, size: 20),
                      contentPadding: EdgeInsets.all(15)),
                ),
              ),
              SizedBox(height: Get.height * 0.05),
              Expanded(
                child: ListView.separated(
                  itemCount: 2,
                  separatorBuilder: (context, index) => SizedBox(
                    height: Get.height * 0.02,
                  ),
                  itemBuilder: (context, index) {
                    return CategoryCard(Icons.train_rounded, 'Train',
                        '25 travels', Colors.red);
                  },
                ),
              )
            ],
          ),
        )));
  }
}
