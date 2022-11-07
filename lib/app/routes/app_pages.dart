import 'package:get/get.dart';
import 'package:task_manager/app/bindings/home_binging.dart';
import 'package:task_manager/app/ui/android/home/botomBar/bottomBar_page.dart';
import 'package:task_manager/app/ui/android/home/home_page.dart';
import 'package:task_manager/app/ui/android/login/login_page.dart';
import 'package:task_manager/app/ui/android/sing_up/sign_up_page.dart';
part './app_routes.dart';

abstract class AppPages {
  static final pages = [
    GetPage(
      name: Routes.HOME,
      page: () => BottomBarPage(),
      binding: HomeBinding()
    ),
    GetPage(
      name: Routes.LOGIN,
      page: () => LoginPage(),
    ),
    GetPage(name: Routes.SIGNUP, page: () => SignUpPage())
  ];
}
