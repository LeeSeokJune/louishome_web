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
  HOME(),
  CURATION(),
  CURATION1(),
  CURATION2(),
  CURATION3(),
  CURATIONSTORE();

  // final double height;
  // const PageName(this.height);
}

double getHeight(int pageIndex) {
  switch (PageName.values[pageIndex]) {
    case PageName.HOME:
      return 1000;
    case PageName.CURATION:
      return 900;
    case PageName.CURATION1:
      return 1400;
    case PageName.CURATION2:
      return 1450;
    case PageName.CURATION3:
      return 1000;
    case PageName.CURATIONSTORE:
      return 1150;
  }
}
