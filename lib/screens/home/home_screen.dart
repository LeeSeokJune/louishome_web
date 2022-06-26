import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:louishome_web/components/constants.dart';
import 'package:louishome_web/components/imagesPath.dart';

import '../../controller/homeBox_controller.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);
  var homeBoxController = Get.put(HomeBoxController());
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          _box(context),
        ],
      ),
    );
  }

  Widget _box(BuildContext context) {
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
              right: context.width - basicWidth > 0
                  ? 310
                  : 310 - (basicWidth - context.width) / 2,
              top: 180,
              child: _pageController()),
        ],
      ),
    );
  }

  Widget _showBox({index}) {
    return Image.asset(ImagesPath.first_box);
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
    return Container(
      width: 18,
      height: 18,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        border: Border.all(
          color: homeBoxController.homeBoxIndexIsIndex(index)
              ? louisColor
              : Colors.grey,
        ),
      ),
      child: Container(
        width: 6,
        height: 6,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: homeBoxController.homeBoxIndexIsIndex(index)
              ? louisColor
              : Colors.grey,
        ),
      ),
    );
  }
}
