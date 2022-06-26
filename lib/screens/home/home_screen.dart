import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:louishome_web/components/constants.dart';
import 'package:louishome_web/screens/home/components/mainBox.dart';
import '../../controller/homeBox_controller.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);
  var homeBoxController = Get.put(HomeBoxController());
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        alignment: Alignment.topCenter,
        decoration: testLine,
        width: basicWidth,
        child: Column(
          children: [
            MainBox(),
            SizedBox(height: 110),
            _bestProducts(),
          ],
        ),
      ),
    );
  }

  Widget _bestProducts() {
    //-770 top
    return Container(
      width: centerWidth,
      height: 1112,
      child: Stack(
        children: [
          Positioned(
            left: 583,
            top: 0,
            child: Text(
              '베스트 상품',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Positioned(
            left: 559,
            top: 46,
            child: Text('이번주 가장 인기있는 상품이에요.'),
          ),
          Positioned(top: 100, child: _bestProductDetailBox()),
        ],
      ),
    );
  }

  Widget _bestProductDetailBox() {
    return Container(
      decoration: testLine,
      child: Stack(
        children: [
          Positioned(
            child: Container(
              width: 395,
              height: 453,
              decoration: BoxDecoration(
                color: Color.fromRGBO(240, 240, 240, 1),
              ),
            ),
          ),
          Positioned(
            left: 136,
            child: Container(
              width: 123,
              height: 49,
              decoration: BoxDecoration(
                color: louisColor,
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
