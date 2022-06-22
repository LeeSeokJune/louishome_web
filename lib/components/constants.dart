import 'package:flutter/material.dart';

final basicWidth = 1920.0;
final centerWidth = 1300.0;
final louisColor = Color.fromRGBO(0, 26, 94, 1);
final testLine = BoxDecoration(border: Border.all(width: 1, color: Colors.red));
final letterSpacing = -2.5;
final curationSmallTextStyle =
    TextStyle(fontSize: 18, fontWeight: FontWeight.w600);

enum CurationPageName {
  BASICINFO,
  CURRENTSTATE,
  COMPLETE,
}

enum PageName {
  HOME,
  CURATION,
  CURATION1,
  CURATION2,
  CURATION3,
}

final List<double> widgetHeight = [1000, 900, 1400];
