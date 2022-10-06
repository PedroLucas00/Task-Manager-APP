import 'package:get/get.dart';
import 'package:task_manager/app/ui/android/home/home_page.dart';
part './app_routes.dart';

abstract class AppPages {

  static final pages = [
    GetPage(name: Routes.HOME, page:()=> HomePage(),)
  ];
}