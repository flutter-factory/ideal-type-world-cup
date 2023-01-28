import 'package:get/get.dart';
import 'package:ideal_type_world_cup/ui/home/home_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeController());
  }
}