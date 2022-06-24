import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:louishome_web/controller/curation_controller.dart';

class CustomTextFormField extends StatelessWidget {
  CustomTextFormField({Key? key, required this.name, this.hintText = ''})
      : super(key: key);
  var curationController = Get.put(CurationController());
  String name;
  String hintText;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 789,
      height: 58,
      child: TextFormField(
        cursorColor: Colors.black,
        decoration: _inputDecoration(),
        style: TextStyle(fontSize: 16),
        onChanged: (value) {
          curationController.curation[name] = value;
        },
      ),
    );
  }

  InputDecoration _inputDecoration() {
    return InputDecoration(
      hintText: hintText,
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
}
