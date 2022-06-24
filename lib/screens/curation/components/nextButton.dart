import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../components/constants.dart';
import '../../../controller/pages_controller.dart';

class NextButton extends StatelessWidget {
  NextButton({
    Key? key,
    required this.pageIndex,
    this.next = true,
  }) : super(key: key);
  var pagesController = Get.put(PagesController());
  int pageIndex;
  bool next;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        width: 200,
        height: 54,
        decoration: BoxDecoration(
          color: next ? louisColor : Colors.white,
          borderRadius: BorderRadius.circular(5),
          border: Border.all(color: louisColor),
        ),
        child: Center(
          child: Text(
            next ? '다음' : '이전',
            style: TextStyle(
                color: next ? Colors.white : Colors.black,
                fontWeight: FontWeight.bold),
          ),
        ),
      ),
      onTap: () {
        next
            ? pagesController.changePage(pageIndex)
            : pagesController.willPopAction();
      },
    );
  }
}
