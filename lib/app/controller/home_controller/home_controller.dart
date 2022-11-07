import 'package:get/get.dart';

class HomeController extends GetxController {
  RxInt selectedPageIndex = 0.obs;

  @override
  void onInit() {
    selectedPageIndex.value = 0;
    super.onInit();
  }

   void changePageIndex(value) {
    selectedPageIndex.value = value;
    update();
  }
}
