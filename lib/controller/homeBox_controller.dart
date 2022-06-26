import 'package:get/get.dart';

class HomeBoxController extends GetxController {
  RxInt homeBoxIndex = 0.obs;

  void setHomeBoxIndex(value) {
    homeBoxIndex(value);
  }

  bool homeBoxIndexIsIndex(value) {
    return homeBoxIndex.value == value;
  }
}
