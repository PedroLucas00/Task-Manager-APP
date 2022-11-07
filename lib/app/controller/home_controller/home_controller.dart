import 'package:get/get.dart';
import 'package:task_manager/app/data/repository/home_repository.dart';

class HomeController extends GetxController {
  RxInt selectedPageIndex = 0.obs;

  void onInit() {
    selectedPageIndex.value = 0;
    super.onInit();
  }

   void changePageIndex(value) {
    selectedPageIndex.value = value;
    update();
  }
}
