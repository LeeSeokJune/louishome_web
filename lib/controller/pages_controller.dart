import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PagesController extends GetxController {
  RxInt pageIndex = 2.obs;
  RxDouble widgetHeight = 1000.0.obs;
  List<int> pageHistory = [2];

  void willPopAction() {
    if (pageHistory.length == 1) {
    } else {
      pageHistory.removeLast();
      var lastIndex = pageHistory.last;
      changePage(lastIndex);
    }
  }

  void changePage(int value) {
    // var page = PageName.values[value]; 추후 switch문 쓸때 혹시나
    _changePage(value);
  }

  void _changePage(int value) {
    pageIndex(value);
    if (pageHistory.last != value) {
      pageHistory.add(value);
    }
    print(pageHistory);
  }

  void setHeight(GlobalKey key) {
    RenderBox _viewBox = key.currentContext!.findRenderObject() as RenderBox;
    var height = _viewBox.size.height;
    widgetHeight(height);
  }
}
