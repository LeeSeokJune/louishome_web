import 'package:get/get.dart';
import 'package:louishome_web/controller/pages_controller.dart';

class InitialBindings extends Bindings {
  @override
  void dependencies() {
    Get.put(PagesController());
  }
}
