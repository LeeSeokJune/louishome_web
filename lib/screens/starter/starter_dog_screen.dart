import 'package:flutter/material.dart';

import 'package:louishome_web/components/calWidth.dart';

import '../../components/constants.dart';
import '../../components/imagesPath.dart';

class StarterDogScreen extends StatelessWidget {
  const StarterDogScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
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
              width: basicWidth,
              height: 2600,
              child: Stack(
                children: [
                  Positioned(
                    left: 0,
                    top: 200,
                    child: Container(
                      width: basicWidth,
                      height: 2385,
                      color: Color.fromRGBO(226, 226, 226, 1),
                    ),
                  ),
                  Positioned(
                    // -310 / -855
                    left: calWidth(context),
                    top: 0,
                    child: Container(
                      width: centerWidth,
                      height: 2385,
                      child: Stack(
                        children: [
                          Positioned(
                            left: 80,
                            top: 0,
                            child: _greyBackgroundImage(),
                          ),
                          Positioned(
                            left: 700,
                            top: 300,
                            child: _bar(),
                          ),
                          Positioned(
                            left: 960,
                            top: 238,
                            child: _textWithButton(
                              width: 258,
                              height: 211,
                              text: '식품관',
                              subText:
                                  '성장기 아이들은 잘 먹어야 무럭무럭 자라기 때문에 프로바이오틱스, 식이섬유가 풍부한 사료 필요',
                            ),
                          ),
                          Positioned(
                            left: 80,
                            top: 835,
                            child: _textWithButton(
                              width: 230,
                              height: 235,
                              text: '홈/리빙',
                              subText:
                                  '반려견들이 편하게 쉴 수 있는 공간을 만들어주는 것은 반려견들의 휴식을 편안하게 해주고, 자신의 공간이라는 개념을 갖게 만들 수 있습니다.',
                            ),
                          ),
                          Positioned(left: 400, top: 896, child: _bar()),
                          Positioned(
                              left: 700,
                              top: 582,
                              child: _greyBackgroundImage()),
                          Positioned(
                              left: 80,
                              top: 1168,
                              child: _greyBackgroundImage()),
                          Positioned(left: 700, top: 1483, child: _bar()),
                          Positioned(
                            left: 960,
                            top: 1422,
                            child: _textWithButton(
                              width: 230,
                              height: 235,
                              text: '미용/위생',
                              subText:
                                  '아직 피부가 약한 아이들을 위해서 순한 제품들 위주로 사용하는게 좋습니다. 특히 털이 짧은 단모종들은 보습 효과가 좋은 제품들이 좋아요!',
                            ),
                          ),
                          Positioned(
                            left: 80,
                            top: 1997,
                            child: _textWithButton(
                              width: 271,
                              height: 235,
                              text: '산책용품',
                              subText:
                                  '강아지의 체형이나 산책 습관에 맞춰 적합한 목줄 및 하네스를 선택해주세요. 이 시기에 형성된 산책 습관은 평생 가기에 보호자님의 꾸준한 교육이 필요합니다.',
                            ),
                          ),
                          Positioned(left: 400, top: 2057, child: _bar()),
                          Positioned(
                            left: 700,
                            top: 1764,
                            child: _greyBackgroundImage(),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Container _bar() {
    return Container(
      width: 200,
      height: 1,
      color: Color.fromRGBO(49, 49, 49, 1),
    );
  }

  Container _textWithButton({width, height, text, subText}) {
    return Container(
      width: width,
      height: height,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            text,
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 25),
          Text(
            subText,
            style: TextStyle(
              fontSize: 16,
            ),
          ),
          SizedBox(height: 40),
          Container(
            width: 162,
            height: 51,
            color: louisColor,
            child: Center(
              child: Text(
                '해당상품 바로가기',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Container _greyBackgroundImage() {
    return Container(
      width: 520,
      height: 670,
      decoration: BoxDecoration(
        color: Color.fromRGBO(234, 234, 234, 1),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            spreadRadius: 5,
            blurRadius: 20,
            offset: Offset(5, 5),
          ),
        ],
      ),
      child: Image.asset(
        'assets/images/petfood0.png',
        width: 494,
        height: 494,
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
