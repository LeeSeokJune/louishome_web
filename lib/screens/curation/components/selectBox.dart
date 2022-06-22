import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controller/curation_controller.dart';

class SelectBox extends StatelessWidget {
  SelectBox({Key? key, required this.index, required this.name})
      : super(key: key);
  var curationController = Get.put(CurationController());
  int index;
  String name;
  @override
  Widget build(BuildContext context) {
    var buttonList;
    if (name == 'sex') {}
    return Container(
      width: 253,
      height: 58,
      decoration: BoxDecoration(),
      child: Text('asdf'),
    );
  }
}
