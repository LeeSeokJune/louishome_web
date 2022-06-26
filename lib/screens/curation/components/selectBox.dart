import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:louishome_web/controller/curation_controller.dart';

import '../../../components/constants.dart';

class SelectBox extends StatelessWidget {
  SelectBox({
    Key? key,
    required this.name,
    required this.index,
    required this.buttonNameList,
    this.width = 253,
    this.height = 58,
  }) : super(key: key);
  int index;
  String name;
  double width;
  double height;
  var buttonNameList;
  // var list;
  var curationController = Get.put(CurationController());
  @override
  Widget build(BuildContext context) {
    return Obx(
      () => InkWell(
        child: Container(
          width: width,
          height: height,
          decoration: BoxDecoration(
            color:
                index == curationController.curation['selected_' + name].value
                    ? louisColor
                    : Colors.white,
            borderRadius: BorderRadius.circular(5),
          ),
          child: Center(
            child: Text(
              buttonNameList[index].toString(),
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
          curationController.curation[name] = index.toString();
        },
      ),
    );
  }
}
