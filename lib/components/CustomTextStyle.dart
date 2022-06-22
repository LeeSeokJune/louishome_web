import 'package:flutter/material.dart';

class CustomTextStyle extends TextStyle {
  CustomTextStyle(
    fontSize,
    fontWeight,
  ) : super(
          fontSize: fontSize,
          fontWeight: fontWeight,
          letterSpacing: -2.5,
        );
}
