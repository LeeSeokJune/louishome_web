import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/state_manager.dart';

class ProductController extends GetxController {
  RxBool isNutrientsShow = false.obs;
  RxBool isAmountShow = false.obs;

  void setIsNutrientsShow() {
    isNutrientsShow(!isNutrientsShow.value);
  }

  void setIsAmountShow() {
    isAmountShow(!isAmountShow.value);
  }
}
