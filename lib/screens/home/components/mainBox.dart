import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:louishome_web/components/calWidth.dart';

import '../../../components/constants.dart';
import '../../../components/imagesPath.dart';
import '../../../controller/homeBox_controller.dart';

class MainBox extends StatelessWidget {
  MainBox({Key? key}) : super(key: key);
  var homeBoxController = Get.put(HomeBoxController());
  @override
  Widget build(BuildContext context) {
    return Container(
      width: basicWidth,
      height: 480,
      color: Color.fromRGBO(240, 240, 240, 1),
      child: Stack(
        children: [
          AnimatedSwitcher(
            duration: Duration(milliseconds: 500),
            child: IndexedStack(
              index: homeBoxController.homeBoxIndex.value,
              children: [
                _showBox(index: 0),
                _showBox(index: 1),
              ],
            ),
          ),
          Positioned(
              right: calWidth(context), top: 180, child: _pageController()),
        ],
      ),
    );
  }

  Widget _showBox({index}) {
    return Container(
      width: basicWidth,
      height: 480,
      child: Image.asset(
        ImagesPath.first_box,
        fit: BoxFit.fitHeight,
      ),
    );
  }

  Widget _pageController() {
    return Column(
      children: [
        _pageSwitcher(index: 0),
        SizedBox(height: 26),
        _pageSwitcher(index: 1),
        SizedBox(height: 26),
        _pageSwitcher(index: 2),
        SizedBox(height: 26),
        _pageSwitcher(index: 3),
      ],
    );
  }

  Widget _pageSwitcher({index}) {
    return index == homeBoxController.homeBoxIndex.value
        ? Icon(
            Icons.radio_button_checked_rounded,
            size: 18,
            color: louisColor,
          )
        : Container(
            width: 6,
            height: 6,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: Colors.grey,
            ),
          );
  }
}
