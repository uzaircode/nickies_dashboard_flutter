import 'package:get/get.dart';
import 'package:nickies_dashboard_flutter/view/home/home_page_controller.dart';

class HomePageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomePageController>(() => HomePageController());
  }
}
