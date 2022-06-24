import 'package:flutter/material.dart';

final basicWidth = 1920.0;
final centerWidth = 1300.0;
final louisColor = Color.fromRGBO(0, 26, 94, 1);
final testLine = BoxDecoration(border: Border.all(width: 1, color: Colors.red));
final letterSpacing = -2.5;
final curationSmallTextStyle =
    TextStyle(fontSize: 18, fontWeight: FontWeight.w600);

enum CurationPageName {
  FisrtPage,
  SecondPage,
  ThirePage,
}

enum PageName {
  HOME(1000),
  CURATION(900),
  CURATION1(1400),
  CURATION2(1450),
  CURATION3(1000),
  CURATIONSTORE(1150);

  final double height;
  const PageName(this.height);
}

double getHeight(var pageIndex) {
  if (PageName.HOME.index == pageIndex) {
    return 1000;
  }
  if (PageName.CURATION.index == pageIndex) {
    return 900;
  }
  if (PageName.CURATION1.index == pageIndex) {
    return 1400;
  }
  if (PageName.CURATION2.index == pageIndex) {
    return 1450;
  }
  if (PageName.CURATION3.index == pageIndex) {
    return 1000;
  }
  if (PageName.CURATIONSTORE.index == pageIndex) {
    return 1150;
  }
  return 0.0;
}
