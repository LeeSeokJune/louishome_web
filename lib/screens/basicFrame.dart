import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:louishome_web/components/constants.dart';
import 'package:louishome_web/components/imagesPath.dart';
import 'package:louishome_web/screens/curation/curation1_screen.dart';
import '../controller/pages_controller.dart';
import 'curation/curation_screen.dart';
import 'home/home_screen.dart';

class BasicFrame extends StatelessWidget {
  BasicFrame({Key? key}) : super(key: key);
  var pagesController = Get.put(PagesController());
  final homeKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          topbar(context),
          Obx(
            () => Container(
              height: widgetHeight[pagesController.pageIndex.value],
              child: IndexedStack(
                index: pagesController.pageIndex.value,
                children: [
                  HomeScreen(),
                  CurationScreen(),
                  Curation1Screen(),
                ],
              ),
            ),
          ),
          bottomBar(context),
        ],
      ),
    );
  }

  Widget topbar(BuildContext context) {
    return Column(
      children: [
        _moveToCuration(context),
        _topContainer(context),
      ],
    );
  }

  Widget _moveToCuration(BuildContext context) {
    return Container(
      height: 40,
      width: context.width,
      color: louisColor,
      child: Center(
        child: Container(
          width: centerWidth,
          child: Stack(
            children: [
              Positioned(
                left: 472,
                top: 11,
                child: InkWell(
                    child: Text(
                      '맞춤형 사료추천, 내 반려동물에게 딱 맞는 사료를 찾아보세요',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    onTap: () {
                      pagesController.changePage(PageName.CURATION.index);
                    }),
              ),
              Positioned(
                left: 812,
                top: 11,
                child: InkWell(
                    child: Image.asset(
                      IconPath.rightArrow,
                      width: 17,
                      height: 17,
                    ),
                    onTap: () {
                      pagesController.changePage(PageName.CURATION.index);
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _topContainer(BuildContext context) {
    return Container(
      width: context.width,
      height: 136,
      child: Center(
        child: Stack(
          children: [
            Positioned(left: 0, top: 39, child: _topDivider(context)),
            Positioned(left: 0, top: 135, child: _topDivider(context)),
            _topFirstLine(),
            _topSecondLine(),
          ],
        ),
      ),
    );
  }

  Widget _topDivider(BuildContext context) {
    return Container(
      width: context.width,
      height: 1,
      color: Color.fromRGBO(240, 240, 240, 1),
    );
  }

  Widget _topFirstLine() {
    return Center(
      child: Container(
        width: centerWidth,
        child: Stack(
          children: [
            Positioned(
                left: 0,
                top: 13,
                child: InkWell(
                  child: Text('뒤로가기'),
                  onTap: () {
                    pagesController.willPopAction();
                  },
                )),
            Positioned(left: 946, top: 13, child: _greyTextButton('NOTICE')),
            Positioned(left: 1002, top: 22, child: _rod(0)),
            Positioned(left: 1015, top: 13, child: _greyTextButton('장바구니')),
            Positioned(left: 1068, top: 22, child: _rod(0)),
            Positioned(left: 1081, top: 13, child: _greyTextButton('로그인')),
            Positioned(left: 1124, top: 22, child: _rod(0)),
            Positioned(left: 1137, top: 13, child: _greyTextButton('회원가입')),
            Positioned(
              left: 1129,
              top: 33,
              child: Image.asset(
                IconPath.addPoint,
                width: 61,
                height: 26,
              ),
            ),
            Positioned(
              left: 1137,
              top: 41,
              child: Text(
                '+ 1000P',
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _topSecondLine() {
    return Center(
      child: Container(
        width: centerWidth,
        child: Stack(
          children: [
            Positioned(
              left: 0,
              top: 60,
              child: InkWell(
                child: Image.asset(
                  ImagesPath.horizontalLogo,
                  color: louisColor,
                  height: 56,
                ),
                onTap: () {
                  pagesController.changePage(PageName.HOME.index);
                },
              ),
            ),
            Positioned(
              left: 265,
              top: 75,
              child: Row(
                children: [
                  Image.asset(
                    IconPath.menu,
                  ),
                  SizedBox(width: 10),
                  _categoryText('전체카테고리'),
                ],
              ),
            ),
            Positioned(left: 433, top: 77, child: _categoryText('맞춤쇼핑')),
            Positioned(left: 535, top: 77, child: _categoryText('스타터')),
            Positioned(left: 621, top: 77, child: _categoryText('건강기획전')),
            Positioned(left: 739, top: 77, child: _categoryText('베스트')),
            Positioned(left: 825, top: 77, child: _categoryText('신상품')),
            _searchForm(),
            Positioned(left: 1291, top: 75, child: Image.asset(IconPath.star)),
            Positioned(
                left: 1335,
                top: 75,
                child: Image.asset(IconPath.shopping_basket)),
          ],
        ),
      ),
    );
  }

  Widget _searchForm() {
    return Stack(
      children: [
        Positioned(
          left: 941,
          top: 64,
          child: Image.asset(IconPath.searchContainer),
        ),
        Positioned(left: 1201, top: 78, child: Image.asset(IconPath.search)),
        Positioned(
          left: 957,
          top: 82,
          child: Container(
            height: 17,
            width: 230,
            child: TextFormField(
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: '스타터 패키지 20% 할인',
                hintStyle: TextStyle(
                  fontSize: 14,
                  color: Color.fromRGBO(112, 120, 129, 1),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _categoryText(String text) {
    return Text(
      text,
      style: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w700,
      ),
    );
  }

  Widget _greyTextButton(String text) {
    return TextButton(
      child: Text(
        text,
        style: TextStyle(
          color: Color.fromRGBO(112, 120, 129, 1),
          fontSize: 10,
        ),
      ),
      onPressed: () {},
    );
  }

  Widget bottomBar(BuildContext context) {
    return Container(
      height: 284,
      width: context.width,
      color: Colors.black,
      child: Center(
        child: Container(
          width: centerWidth,
          child: Stack(
            children: [
              _bottomFirstLine(),
              _bottomSecondLine(),
              _bottomThirdLine(),
              _bottomExtraLine(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _bottomFirstLine() {
    return Stack(
      children: [
        Positioned(
          left: 0,
          top: 46,
          child: Image.asset(ImagesPath.horizontalLogo,
              height: 38, color: Colors.white),
        ),
        Positioned(left: 998, top: 46, child: _whiteText('이용약관')),
        Positioned(left: 1061, top: 46, child: _whiteText('개인정보취급방침')),
        Positioned(
            left: 1208, top: 36, child: _snsIcon(IconPath.instagramIcon)),
        Positioned(left: 1264, top: 36, child: _snsIcon(IconPath.kakaoIcon)),
      ],
    );
  }

  Widget _bottomSecondLine() {
    return Stack(
      children: [
        Positioned(left: 0, top: 124, child: _blurText('법인명 : 스니프주식회사')),
        Positioned(left: 143, top: 127, child: _rod(1)),
        Positioned(left: 154, top: 124, child: _blurText('대표이사 : 장재혁')),
        Positioned(left: 260, top: 127, child: _rod(1)),
        Positioned(
            left: 271, top: 124, child: _blurText('사업자등록번호 : 583-87-02203')),
        Positioned(left: 474, top: 127, child: _rod(1)),
        Positioned(
            left: 485,
            top: 124,
            child: _blurText('주소 : 서울특별시 마포구 백범로 16안길 9, 1층')),
        Positioned(left: 745, top: 127, child: _rod(1)),
        Positioned(left: 756, top: 124, child: _blurText('대표전화 : 02-702-2779')),
      ],
    );
  }

  Widget _bottomExtraLine() {
    return Stack(
      children: [
        Positioned(
            left: 0,
            top: 209,
            child: _blurText("COPYRIGHT © LOUIS'HOME ALL RIGHTS RESERVED")),
        Positioned(
            left: 1240,
            top: 164,
            child: Image.asset(
              IconPath.upperArrowBox,
              height: 60,
              width: 60,
            )),
      ],
    );
  }

  Widget _bottomThirdLine() {
    return Stack(
      children: [
        Positioned(left: 0, top: 152, child: _blurText('개인정보보호책임자 : 장재혁')),
        Positioned(left: 167, top: 155, child: _rod(1)),
        Positioned(
            left: 178, top: 152, child: _blurText('통신판매업 : 2022-서울마포-00000호')),
        Positioned(left: 412, top: 155, child: _rod(1)),
        Positioned(
            left: 423,
            top: 152,
            child: _blurText('이메일 : sneefcompany@gmail.com')),
      ],
    );
  }

  Widget _snsIcon(String iconName) {
    return Container(
      width: 36,
      height: 36,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: Color.fromRGBO(52, 54, 62, 1),
      ),
      child: Image.asset(
        iconName,
        color: Colors.white,
      ),
    );
  }

  Widget _whiteText(String text) {
    return Text(
      text,
      style: TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.w400,
        fontSize: 14,
      ),
    );
  }

  Widget _blurText(String text) {
    return Text(
      text,
      style: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w500,
        color: Color.fromRGBO(107, 107, 107, 1),
      ),
    );
  }

  Widget _rod(int id) {
    return Container(
      width: 1,
      height: id == 0 ? 10 : 12,
      decoration: BoxDecoration(
        border: Border.all(
          color: id == 0
              ? Color.fromRGBO(112, 120, 129, 1)
              : Color.fromRGBO(107, 107, 107, 1),
        ),
      ),
    );
  }
}
