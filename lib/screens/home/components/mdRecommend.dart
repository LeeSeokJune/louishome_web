import 'package:flutter/material.dart';
import 'package:louishome_web/components/constants.dart';
import 'package:louishome_web/components/imagesPath.dart';

class MDRecommend extends StatelessWidget {
  const MDRecommend({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: basicWidth,
      height: 951,
      child: Row(
        children: [
          Stack(
            children: [
              Container(
                width: 960,
                height: 942,
                decoration:
                    BoxDecoration(color: Color.fromRGBO(240, 240, 240, 1)),
                child: Image.asset(
                  ImagesPath.md_recommend_dog,
                  fit: BoxFit.contain,
                ),
              ),
              Text('MD 추천'),
              Text(
                '특별한 날 이런 간식 어때요?',
              ),
            ],
          ),
          Column(
            children: [
              Row(
                children: [
                  _textContainer(
                    mainText: '펫 이동가방 타피오카',
                    subText1: '강아지와 고양이의 특성과 습성을',
                    subText2: '연구하여 제작된 소프트 캐리어입니다.',
                  ),
                  _imageContainer(imagePath: ImagesPath.tapioca_bag),
                ],
              ),
              Row(
                children: [
                  _imageContainer(imagePath: ImagesPath.harness),
                  _textContainer(
                    mainText: '강아지하네스',
                    subText1: '반려인과 반려동물의 즐겁고',
                    subText2: '편한 산책을 위해 제작되었습니다.',
                  )
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }

  Container _imageContainer({imagePath}) {
    return Container(
      width: 480,
      height: 471,
      child: Image.asset(imagePath),
    );
  }

  Container _textContainer({mainText, subText1, subText2}) {
    return Container(
      width: 480,
      height: 471,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            mainText,
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 12),
          Text(
            subText1,
            style: TextStyle(
              fontSize: 14,
              color: Colors.grey,
            ),
          ),
          Text(
            subText2,
            style: TextStyle(
              fontSize: 14,
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}
