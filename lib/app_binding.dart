import 'package:get/get.dart';
import 'package:retro_Sample/ui/home_controller.dart';

class AppBinding extends Bindings{

  @override
  void dependencies() {
    Get.put(HomeController());
  }
}