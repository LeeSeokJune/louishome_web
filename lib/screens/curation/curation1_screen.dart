import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:louishome_web/components/constants.dart';
import 'package:louishome_web/components/imagesPath.dart';
import 'package:louishome_web/controller/curation_controller.dart';
import 'package:louishome_web/controller/pages_controller.dart';
import 'package:louishome_web/screens/curation/components/curationBox.dart';

import '../../data/curationData.dart';

class Curation1Screen extends StatelessWidget {
  Curation1Screen({Key? key}) : super(key: key);
  var curationController = Get.put(CurationController());
  var pagesController = Get.put(PagesController());
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          SizedBox(height: 70),
          CurationBox(
            height: 836,
            pageIndex: CurationPageName.FisrtPage.index,
            children: [
              _inputName(),
              _inputBreed(),
              _inputBirth(),
              _inputSex(),
              _inputNeutering(),
              Positioned(left: 530, top: 702, child: _nextButton()),
            ],
          ),
        ],
      ),
    );
  }

  Widget _inputName() {
    return Stack(
      children: [
        Positioned(
          left: 183,
          top: 180,
          child: Text(
            '이름',
            style: curationSmallTextStyle,
          ),
        ),
        Positioned(
          left: 328,
          top: 160,
          child: Container(
            width: 789,
            height: 58,
            child: TextFormField(
              cursorColor: Colors.black,
              decoration: _inputDecoration(),
              style: TextStyle(fontSize: 16),
              onChanged: (value) {
                curationController.curation['name'] = value;
              },
            ),
          ),
        ),
      ],
    );
  }

  InputDecoration _inputDecoration() {
    return InputDecoration(
      filled: true,
      fillColor: Colors.white,
      hoverColor: Colors.white,
      enabledBorder: _outlineInputBorder(),
      focusedBorder: _outlineInputBorder(),
      border: InputBorder.none,
    );
  }

  OutlineInputBorder _outlineInputBorder() {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(5), borderSide: BorderSide.none);
  }

  Widget _inputBreed() {
    return Stack(
      children: [
        Positioned(
          left: 183,
          top: 286,
          child: Text(
            '견종',
            style: curationSmallTextStyle,
          ),
        ),
        Positioned(
          left: 328,
          top: 266,
          child:
              _customDropDownButton('breed', breedList, width: 789, height: 58),
        ),
      ],
    );
  }

  Widget _inputBirth() {
    return Stack(
      children: [
        Positioned(
          left: 183,
          top: 392,
          child: Text(
            '생년월일',
            style: curationSmallTextStyle,
          ),
        ),
        Positioned(
          left: 328,
          top: 376,
          child: _customDropDownButton('birthYear', birthYearList),
        ),
        Positioned(
          left: 596,
          top: 376,
          child: _customDropDownButton('birthMonth', birthMonthList),
        ),
        Positioned(
          left: 864,
          top: 376,
          child: _customDropDownButton('birthDay', birthDayList),
        ),
      ],
    );
  }

  Widget _customDropDownButton(String name, List list,
      {double width = 253, double height = 58}) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(5)),
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 20),
        child: Obx(
          () => DropdownButton(
            isExpanded: true,
            underline: SizedBox.shrink(),
            icon: Image.asset(IconPath.down_arrow),
            value: curationController.curation[name].value,
            items: list
                .map((value) => DropdownMenuItem(
                      value: value,
                      child: Text(
                        value,
                        style: TextStyle(fontSize: 16),
                      ),
                    ))
                .toList(),
            onChanged: (value) {
              curationController.curation[name].value = value;
            },
          ),
        ),
      ),
    );
  }

  Widget _inputSex() {
    return Stack(
      children: [
        Positioned(
          left: 183,
          top: 498,
          child: Text('성별', style: curationSmallTextStyle),
        ),
        Positioned(left: 334, top: 478, child: _selectBox('sex', 0, sex)),
        Positioned(left: 596, top: 478, child: _selectBox('sex', 1, sex)),
      ],
    );
  }

  Widget _inputNeutering() {
    return Stack(
      children: [
        Positioned(
          left: 183,
          top: 604,
          child: Text('중성화 여부', style: curationSmallTextStyle),
        ),
        Positioned(left: 334, top: 594, child: _selectBox('neutering', 0, yn)),
        Positioned(left: 596, top: 594, child: _selectBox('neutering', 1, yn)),
      ],
    );
  }

  Widget _selectBox(String name, int index, List list) {
    return Obx(
      () => InkWell(
        child: Container(
          width: 253,
          height: 58,
          decoration: BoxDecoration(
            color:
                index == curationController.curation['selected_' + name].value
                    ? louisColor
                    : Colors.white,
            borderRadius: BorderRadius.circular(5),
          ),
          child: Center(
            child: Text(
              list[index].toString(),
              style: TextStyle(
                fontSize: 16,
                color: index ==
                        curationController.curation['selected_' + name].value
                    ? Colors.white
                    : louisColor,
              ),
            ),
          ),
        ),
        onTap: () {
          curationController.curation['selected_' + name].value = index;
          curationController.curation[name].value = index.toString();
          print(curationController.curation['selected_' + name]);
        },
      ),
    );
  }

  Widget _nextButton() {
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
            '다음',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
      ),
      onTap: () {
        pagesController.changePage(PageName.CURATION2.index);
      },
    );
  }
}
