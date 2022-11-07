import 'package:get/get.dart';
import 'package:task_manager/app/controller/home_controller/home_controller.dart';
import 'package:task_manager/app/data/provider/api.dart';
import 'package:task_manager/app/data/repository/home_repository.dart';

class HomeBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(() => HomeController());
  }
}
