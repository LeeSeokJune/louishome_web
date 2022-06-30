import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:louishome_web/components/constants.dart';

double calWidth(BuildContext context) {
  if (context.width > basicWidth) {
    return 310;
  } else if (context.width > centerWidth) {
    return 310 - (basicWidth - context.width) / 2;
  } else {
    return 0;
  }
}
