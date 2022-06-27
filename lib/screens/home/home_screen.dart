import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:louishome_web/components/constants.dart';
import 'package:louishome_web/screens/home/components/bestProduct.dart';
import 'package:louishome_web/screens/home/components/mainBox.dart';
import 'package:louishome_web/screens/home/components/newProduct.dart';
import 'package:louishome_web/screens/home/components/petfoodSubscription.dart';
import 'package:louishome_web/screens/home/components/todayHotDeal.dart';
import '../../controller/homeBox_controller.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);
  var homeBoxController = Get.put(HomeBoxController());
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        alignment: Alignment.topCenter,
        width: basicWidth,
        child: Column(
          children: [
            // MainBox(),
            // SizedBox(height: 110),
            // BestProduct(),
            // PetfoodSubScription(),
            // NewProduct(),
            TodayHotDeal(),
          ],
        ),
      ),
    );
  }
}
//892
