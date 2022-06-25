import 'package:get/get.dart';

class CurationStoreController extends GetxController {
  RxInt storePageIndex = 0.obs;
  RxInt itemPageIndex = 0.obs;
  bool storePageIndexIsIndex(int index) {
    return storePageIndex.value == index;
  }

  void setStorePageIndex(int value) {
    storePageIndex(value);
  }

  bool itemPageIndexIsIndex(int index) {
    return itemPageIndex.value == index;
  }

  void setItemPageIndex(int value) {
    itemPageIndex(value);
  }

  int getPageNumber() {
    return storePageIndex.value + itemPageIndex.value;
  }
}
