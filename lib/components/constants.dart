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
  CURATIONSTORE(),
  STARTER(),
  STARTER_DOG(),
  STARTER_PRODUCT(),
  PRODUCT(),
  Filtering(),
  HealthPlanningExhibition(),

  // final double height;
  // const PageName(this.height);
}

double getHeight(int pageIndex) {
  switch (PageName.values[pageIndex]) {
    case PageName.HOME:
      return 7551;
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
    case PageName.STARTER:
      return 1500;
    case PageName.STARTER_DOG:
      return 3500;
    case PageName.STARTER_PRODUCT:
      return 2700;
    case PageName.PRODUCT:
      return 9400;
    case PageName.Filtering:
      return 3000;
    case PageName.HealthPlanningExhibition:
      return 2000;
  }
}

enum CurationStorePageName {
  PETFOOD,
  NUTRIENTS,
  SNACK,
}

enum TopCategoryName {
  CATEGORY('전체카테고리'),
  CUSTOMSHOPPING('맞춤 쇼핑'),
  STARTER('스타터'),
  HEALTH('건강기획전'),
  BEST('베스트'),
  NEWITEM('신상품'),
  ;

  final String text;
  const TopCategoryName(this.text);
}
