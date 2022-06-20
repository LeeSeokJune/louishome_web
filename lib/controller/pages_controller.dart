import 'package:get/get.dart';

import '../components/constants.dart';

class PagesController extends GetxController {
  RxInt pageIndex = 0.obs;
  RxDouble widgetHeight = 1000.0.obs;
  List<int> pageHistory = [0];

  bool willPopAction() {
    if (pageHistory.length == 1) {
      return true;
    } else {
      pageHistory.removeLast();
      var lastIndex = pageHistory.last;
      changePage(lastIndex);
      return false;
    }
  }

  void changePage(int value) {
    var page = PageName.values[value];
    switch (page) {
      case PageName.HOME:
      case PageName.CURATION:
        _changePage(value);
        break;
    }
  }

  void _changePage(int value) {
    pageIndex(value);
    if (pageHistory.last != value) {
      pageHistory.add(value);
    }
    print(pageHistory);
  }
}
