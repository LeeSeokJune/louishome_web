import 'package:flutter/material.dart';
import 'package:louishome_web/components/constants.dart';
import 'package:louishome_web/components/imagesPath.dart';
import 'package:louishome_web/screens/starter/components/starter_guide.dart';

import 'components/starter_pageController.dart';

class StarterProductScreen extends StatelessWidget {
  const StarterProductScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: basicWidth,
        child: Column(
          children: [
            StarterGuide(),
            SizedBox(height: 80),
            StarterPageController(),
            SizedBox(height: 37),
            _subPageController(),
            SizedBox(height: 100),
            _subPageContents(),
            SizedBox(height: 100),
            _trainVideo(),
          ],
        ),
      ),
    );
  }

  Widget _trainVideo() {
    return Container(
      width: centerWidth,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '식습관 형성 교육법',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 30),
          Row(
            children: [
              _showVideo(index: 0, text: '밥 안먹는 강아지를 위한 훈련', time: '5:25'),
              SizedBox(width: 46),
              _showVideo(index: 1, text: '밥 안먹는 강아지를 위한 훈련', time: '6:14'),
            ],
          ),
        ],
      ),
    );
  }

  Row _showVideo({index, text, time}) {
    return Row(
      children: [
        Column(
          children: [
            Stack(
              children: [
                Image.asset('assets/images/starter_train_dog${index}.png'),
                Positioned(
                  left: 296,
                  top: 160,
                  child: Icon(
                    Icons.play_arrow,
                    size: 40,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            SizedBox(height: 30),
            Container(
              width: 627,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    text,
                    style: TextStyle(fontSize: 16),
                  ),
                  Row(
                    children: [
                      Icon(Icons.schedule, size: 18),
                      SizedBox(width: 6),
                      Text(time, style: TextStyle(fontSize: 16)),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }

  Container _subPageContents() {
    return Container(
      width: centerWidth,
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 182,
                height: 182,
                color: Color.fromRGBO(235, 235, 235, 1),
                child: Image.asset(
                  ImagesPath.starter_product_dog,
                  width: 162,
                  height: 162,
                ),
              ),
              SizedBox(width: 40),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 38),
                  Text(
                    '사료 for Puppy',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 30),
                  Text(
                    '성장기 강아지들에게 풍부한 자양분 섭취는 필수적이에요. 잘 먹어야 튼튼하고 건강하게 자랄 수 있어요.\n고품질의 육류 단백질과 성장을 돕는 (고)칼로리로 설계된 퍼피 사료들을 만나보세요.',
                    style: TextStyle(fontSize: 16, height: 1.8),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 20),
          _productSelectionCriteria(),
          SizedBox(height: 80),
          Container(
            width: centerWidth,
            child: Column(
              children: [
                Row(children: [
                  _singleItem(),
                  SizedBox(width: 20),
                  _singleItem(),
                  SizedBox(width: 20),
                  _singleItem(),
                  SizedBox(width: 20),
                  _singleItem()
                ]),
                SizedBox(height: 80),
                Row(children: [
                  _singleItem(),
                  SizedBox(width: 20),
                  _singleItem(),
                  SizedBox(width: 20),
                  _singleItem(),
                  SizedBox(width: 20),
                  _singleItem()
                ]),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _singleItem() {
    return Container(
      width: 310,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 310,
            height: 310,
            decoration: BoxDecoration(
              color: Color.fromRGBO(240, 240, 240, 1),
            ),
            child: Stack(
              children: [
                Image.asset(
                  'assets/images/petfood0.png',
                  width: 292,
                  height: 292,
                ),
                Positioned(
                  left: 272,
                  top: 10,
                  child: Icon(
                    Icons.favorite_border_outlined,
                    size: 28,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 45),
          Text('강아지', style: TextStyle(color: Colors.grey)),
          SizedBox(height: 8),
          Text(
            '유기농 강아지 건조 사료',
            style: TextStyle(fontSize: 16),
          ),
          SizedBox(height: 15),
          Row(
            children: [
              Text(
                '35,800원',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(width: 10),
              Text(
                '55,800원',
                style: TextStyle(
                    fontSize: 16, decoration: TextDecoration.lineThrough),
              ),
              SizedBox(width: 104),
              _shoppingcartButton(radius: 28, size: 16),
            ],
          ),
        ],
      ),
    );
  }

  Widget _shoppingcartButton({radius, size}) {
    return Container(
      width: radius,
      height: radius,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        border: Border.all(
          color: Color.fromRGBO(221, 221, 221, 1),
        ),
      ),
      child: Image.asset(
        IconPath.shoppingcart,
        width: size,
        height: size,
      ),
    );
  }

  Container _productSelectionCriteria() {
    return Container(
      width: centerWidth,
      height: 86,
      color: Color.fromRGBO(235, 237, 242, 1),
      child: Row(
        children: [
          SizedBox(width: 60),
          Text(
            '상품 선정 기준',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          SizedBox(width: 60),
          Text('단백질 함유량', style: TextStyle(fontSize: 16)),
          SizedBox(width: 11),
          Text(
            '28% 이상',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          SizedBox(width: 30),
          Container(width: 1, height: 15, color: Color.fromRGBO(0, 26, 94, 1)),
          SizedBox(width: 30),
          Text('칼륨:인 비율', style: TextStyle(fontSize: 16)),
          SizedBox(width: 11),
          Text(
            '6:1',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          SizedBox(width: 30),
          Container(width: 1, height: 15, color: Color.fromRGBO(0, 26, 94, 1)),
          SizedBox(width: 30),
          Text('소화기에 도움이 되는 성분', style: TextStyle(fontSize: 16)),
          SizedBox(width: 11),
          Text(
            '프로바이오틱스, 식이섬유, 고구마, 당근',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }

  Row _subPageController() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _subPageText(text: '사료', index: 0),
        SizedBox(width: 70),
        _subPageText(text: '영양제', index: 1),
        SizedBox(width: 70),
        _subPageText(text: '간식', index: 2),
      ],
    );
  }

  Column _subPageText({text, index}) {
    return Column(
      children: [
        Text(
          text,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: index == 0 ? louisColor : Colors.grey,
          ),
        ),
        SizedBox(height: 8),
        Container(
          width: text.length * 15,
          height: 1,
          color: index == 0 ? louisColor : Colors.white,
        ),
      ],
    );
  }
}
