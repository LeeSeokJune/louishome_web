import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:louishome_web/components/constants.dart';
import 'package:louishome_web/components/imagesPath.dart';
import 'package:louishome_web/controller/curation_controller.dart';
import 'package:louishome_web/screens/curation/components/curationBox.dart';
import 'package:louishome_web/screens/curation/components/nextButton.dart';

class Curation3Screen extends StatelessWidget {
  Curation3Screen({Key? key}) : super(key: key);
  var curationController = Get.put(CurationController());
  @override
  Widget build(BuildContext context) {
    return CurationBox(
      showInfo: false,
      height: 497,
      pageIndex: PageName.CURATION3.index,
      children: [
        Center(
          child: Container(
            width: centerWidth,
            child: Column(
              children: [
                SizedBox(height: 60),
                Text(
                  'AI에게 ${curationController.curation['name']}의 정보가 전달되었습니다:)',
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 40),
                Image.asset(IconPath.curation_dog),
                SizedBox(height: 30),
                Text(
                  '${curationController.curation['name']}의 체질에 맞는 맞춤 사료, 영양제, 간식을 만나보세요!',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(height: 40),
                NextButton(pageIndex: PageName.CURATIONSTORE.index),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
