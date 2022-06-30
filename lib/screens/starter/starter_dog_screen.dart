import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:louishome_web/components/calWidth.dart';

import '../../components/constants.dart';
import '../../components/imagesPath.dart';

class StarterDogScreen extends StatelessWidget {
  const StarterDogScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: basicWidth,
      child: Column(
        children: [
          _starterProductMainBox(context),
          SizedBox(height: 80),
          _pageMoveButtons(),
          SizedBox(height: 100),
          Text(
            '성장기 강아지 친구들은 어떤 것들을 먹어야 할까요?',
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 60),
          Container(
            height: 3000,
            width: basicWidth,
            child: Stack(
              children: [],
            ),
          ),
        ],
      ),
    );
  }

  Row _pageMoveButtons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _pageButton(index: 0, text: '식품관'),
        _pageButton(index: 1, text: '홈/리빙'),
        _pageButton(index: 1, text: '미용/위생'),
        _pageButton(index: 1, text: '산책용품'),
      ],
    );
  }

  Container _pageButton({index, text}) {
    return Container(
      width: 123,
      height: 49,
      decoration: index == 0
          ? BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: louisColor,
            )
          : BoxDecoration(),
      child: Center(
        child: Text(
          text,
          style: TextStyle(
            fontWeight: FontWeight.w600,
            color: index == 0 ? Colors.white : Colors.black,
          ),
        ),
      ),
    );
  }

  Container _starterProductMainBox(BuildContext context) {
    return Container(
      width: basicWidth,
      height: 248,
      decoration: testLine,
      child: Stack(
        children: [
          Container(
            width: basicWidth,
            height: 248,
            child: Image.asset(
              ImagesPath.starter_dog_main,
              fit: BoxFit.fill,
            ),
          ),
          Positioned(
            left: calWidth(context),
            top: 104,
            child: Text(
              '새로운 가족을 맞이하기 위한 루이스홈 가이드',
              style: TextStyle(fontSize: 38, fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}
