import 'package:get/get.dart';
import 'package:green_grocer/src/pages/home/controller/home_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(HomeController());
  }
}
