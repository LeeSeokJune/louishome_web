import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:louishome_web/components/constants.dart';
import 'package:louishome_web/controller/curation_controller.dart';
import 'package:louishome_web/controller/pages_controller.dart';
import 'package:louishome_web/screens/curation/components/curationBox.dart';
import 'package:louishome_web/screens/curation/components/customTextFormField.dart';
import 'package:louishome_web/screens/curation/components/nextButton.dart';
import 'package:louishome_web/screens/curation/components/selectBox.dart';

import '../../data/curationData.dart';

class Curation2Screen extends StatelessWidget {
  Curation2Screen({Key? key}) : super(key: key);
  var curationController = Get.put(CurationController());
  var pagesController = Get.put(PagesController());
  @override
  Widget build(BuildContext context) {
    return Center(
      child: CurationBox(
        height: 893,
        pageIndex: CurationPageName.SecondPage.index,
        children: [
          _inputWeigth(),
          _inputBcs(),
          _inputHasAlg(),
          _inputAlg(),
          _inputHealth(),
          Positioned(
            left: 658,
            top: 762,
            child: NextButton(
              pageIndex: PageName.CURATION3.index,
            ),
          ),
          Positioned(
            left: 448,
            top: 762,
            child: NextButton(
              pageIndex: 0,
              next: false,
            ),
          ),
        ],
      ),
    );
  }

  Widget _inputWeigth() {
    return Stack(
      children: [
        Positioned(
          left: 180,
          top: 180,
          child: Text(
            '몸무게',
            style: curationSmallTextStyle,
          ),
        ),
        Positioned(
          left: 328,
          top: 160,
          child: CustomTextFormField(
            name: 'weight',
            hintText: 'KG',
          ),
        ),
      ],
    );
  }

  Widget _inputBcs() {
    return Stack(
      children: [
        Positioned(
          left: 180,
          top: 286,
          child: Text(
            '체형',
            style: curationSmallTextStyle,
          ),
        ),
        for (var i = 0; i < bcs.length; i++)
          Positioned(
            left: 328 + i * 268,
            top: 266,
            child: SelectBox(name: 'bcs', index: i, buttonNameList: bcs),
          ),
      ],
    );
  }

  Widget _inputHasAlg() {
    return Stack(
      children: [
        Positioned(
          left: 180,
          top: 392,
          child: Text(
            '알러지 여부',
            style: curationSmallTextStyle,
          ),
        ),
        for (var i = 0; i < yn.length; i++)
          Positioned(
            left: 328 + i * 268,
            top: 372,
            child: SelectBox(name: 'hasAlg', index: i, buttonNameList: yn),
          ),
      ],
    );
  }

  Widget _inputAlg() {
    return Stack(
      children: [
        Positioned(
          left: 180,
          top: 496,
          child: Text(
            '알러지 종류',
            style: curationSmallTextStyle,
          ),
        ),
        Positioned(
          left: 328,
          top: 480,
          child: _multiSelectBox(name: 'alg', buttonNameList: alg),
        ),
      ],
    );
  }

  Widget _inputHealth() {
    return Stack(
      children: [
        Positioned(
          left: 180,
          top: 664,
          child: Text(
            '건강관리',
            style: curationSmallTextStyle,
          ),
        ),
        Positioned(
            left: 328,
            top: 648,
            child: _multiSelectBox(name: 'health', buttonNameList: health)),
      ],
    );
  }

  Widget _multiSelectBox({required name, required buttonNameList}) {
    return Container(
      width: 789,
      child: Wrap(
        spacing: 10,
        runSpacing: 20,
        children: [
          for (var index = 0; index < buttonNameList.length; index++)
            Obx(
              () => InkWell(
                child: Container(
                  width: 103,
                  height: 51,
                  decoration: BoxDecoration(
                    color: curationController.curation[name + 'List']
                            .contains(buttonNameList[index])
                        ? louisColor
                        : Colors.white,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Center(
                    child: Text(
                      buttonNameList[index].toString(),
                      style: TextStyle(
                        fontSize: 16,
                        color: curationController.curation[name + 'List']
                                .contains(buttonNameList[index])
                            ? Colors.white
                            : louisColor,
                      ),
                    ),
                  ),
                ),
                onTap: () {
                  curationController.curation[name + 'List']
                          .contains(buttonNameList[index])
                      ? curationController.curation[name + 'List']
                          .remove(buttonNameList[index])
                      : curationController.curation[name + 'List']
                          .add(buttonNameList[index]);
                },
              ),
            ),
        ],
      ),
    );
  }

  Widget _previous() {
    return InkWell(
      child: Container(
        width: 200,
        height: 54,
        decoration: BoxDecoration(
          color: louisColor,
          borderRadius: BorderRadius.circular(5),
        ),
        child: Center(
          child: Text(
            '이전',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
      ),
      onTap: () {
        pagesController.willPopAction();
      },
    );
  }
}
