import 'package:flutter/material.dart';
import 'package:louishome_web/components/constants.dart';
import 'package:louishome_web/components/imagesPath.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: basicWidth,
          child: Column(
            children: [
              Center(
                child: Stack(
                  children: [
                    Container(
                        width: basicWidth,
                        height: 595,
                        child: Image.asset(ImagesPath.starter_main)),
                    Positioned(
                      left: 310,
                      top: 112,
                      child: Text(
                        '제품 안내도 받고, 패키지로 구매해서 할인도 받고',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w400),
                      ),
                    ),
                    Positioned(
                      left: 0,
                      top: 160,
                      child: Container(
                        width: 516,
                        height: 124,
                        child: Text(
                          '새로운 가족을 맞이하기 위한 루이스홈 가이드',
                          style: TextStyle(
                            fontSize: 46,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 120),
              _selectPetType(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _selectPetType() {
    return Row(
      children: [_imageContainer(index: 0), _imageContainer(index: 1)],
    );
  }

  Widget _imageContainer({index}) {
    return Container(
      width: 650,
      height: 608,
      child: Stack(
        children: [
          Positioned(
            child: Image.asset(
              index == 0 ? ImagesPath.puppy : ImagesPath.kitten,
            ),
          ),
          Positioned(
            left: 60,
            top: 408,
            child: Text(
              index == 0 ? 'PUPPY' : 'KITTEN',
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Positioned(
            left: 181,
            top: 408,
            child: Icon(
              Icons.navigate_next,
              size: 40,
              color: Colors.black,
            ),
          ),
          Positioned(
            left: 60,
            top: 495,
            child: Text(
              index == 0
                  ? '강아지를 입양 후 어떤 제품들을 준비해야할 지,'
                  : 't생활습관과 식습관이 시작되는 고양이 성장기,',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
