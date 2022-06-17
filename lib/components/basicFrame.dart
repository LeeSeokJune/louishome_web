import 'package:flutter/material.dart';
import 'package:louishome_web/components/constants.dart';
import 'package:louishome_web/components/imagesPath.dart';

class BasicFrame extends StatelessWidget {
  BasicFrame({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          topbar(),
          bottomBar(context),
        ],
      ),
    );
  }

  Widget topbar() {
    return Column(
      children: [],
    );
  }

  Widget bottomBar(BuildContext context) {
    return Container(
      height: 284,
      width: basicWidth,
      color: Colors.black,
      child: Center(
        child: Container(
          width: centerWidth,
          child: Stack(
            children: [
              _firstLine(),
              _secondLine(),
              _thirdLine(),
              _extraLine(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _firstLine() {
    return Stack(
      children: [
        Positioned(
          left: 0,
          top: 46,
          child: Image.asset(ImagesPath.verticalLogo,
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

  Widget _secondLine() {
    return Stack(
      children: [
        Positioned(left: 0, top: 124, child: _blurText('법인명 : 스니프주식회사')),
        Positioned(left: 143, top: 127, child: _rod()),
        Positioned(left: 154, top: 124, child: _blurText('대표이사 : 장재혁')),
        Positioned(left: 260, top: 127, child: _rod()),
        Positioned(
            left: 271, top: 124, child: _blurText('사업자등록번호 : 583-87-02203')),
        Positioned(left: 474, top: 127, child: _rod()),
        Positioned(
            left: 485,
            top: 124,
            child: _blurText('주소 : 서울특별시 마포구 백범로 16안길 9, 1층')),
        Positioned(left: 745, top: 127, child: _rod()),
        Positioned(left: 756, top: 124, child: _blurText('대표전화 : 02-702-2779')),
      ],
    );
  }

  Widget _extraLine() {
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
              IconPath.upperArrow,
              height: 60,
              width: 60,
            )),
      ],
    );
  }

  Widget _thirdLine() {
    return Stack(
      children: [
        Positioned(left: 0, top: 152, child: _blurText('개인정보보호책임자 : 장재혁')),
        Positioned(left: 167, top: 155, child: _rod()),
        Positioned(
            left: 178, top: 152, child: _blurText('통신판매업 : 2022-서울마포-00000호')),
        Positioned(left: 412, top: 155, child: _rod()),
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

  Widget _rod() {
    return Container(
      width: 1,
      height: 12,
      decoration: BoxDecoration(
        border: Border.all(
          color: Color.fromRGBO(107, 107, 107, 1),
        ),
      ),
    );
  }
}
