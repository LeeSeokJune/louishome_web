import 'package:flutter/material.dart';
import 'package:louishome_web/components/constants.dart';

import '../../components/imagesPath.dart';

class FilteringScreen extends StatelessWidget {
  const FilteringScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: centerWidth,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 60),
            Padding(
              padding: const EdgeInsets.all(14.0),
              child: Text(
                '강아지/사료/건사료',
                style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(width: 14),
                _category(),
                SizedBox(width: 60),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 1035,
                      height: 203,
                      color: Color.fromRGBO(240, 240, 240, 1),
                      child: Stack(
                        children: [
                          Positioned(
                            left: 60,
                            top: 40,
                            child: Text(
                              '사료계의 명품 빅스비\n그레인프리 사료 신상품 입고',
                              style: TextStyle(
                                fontSize: 28,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          Positioned(
                            left: 60,
                            top: 148,
                            child: Text(
                              '입고 기념 특별할인 + 추가 10% 쿠폰',
                              style: TextStyle(fontSize: 16),
                            ),
                          ),
                          Positioned(
                            left: 650,
                            top: 20,
                            child: Image.asset(
                              ImagesPath.petfood_group,
                              width: 336,
                              height: 174,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 30),
                    Container(
                      width: 1034,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          _categoryImageText(index: 0, text: '퍼피'),
                          _categoryImageText(index: 1, text: '어덜트'),
                          _categoryImageText(index: 2, text: '시니어'),
                          _categoryImageText(index: 3, text: '다이어트'),
                          _categoryImageText(index: 4, text: '그레인프리'),
                          _categoryImageText(index: 5, text: '단일단백질'),
                          _categoryImageText(index: 1, text: '곤충사료'),
                        ],
                      ),
                    ),
                    SizedBox(height: 42),
                    Container(
                      width: 1034,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('전체 35', style: TextStyle(fontSize: 20)),
                          Row(
                            children: [
                              Text('상품정렬', style: TextStyle(fontSize: 16)),
                              SizedBox(width: 16),
                              Icon(
                                Icons.keyboard_arrow_down,
                                size: 24,
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 15),
                    Container(width: 1034, height: 1, color: Colors.grey),
                    SizedBox(height: 20),
                    Column(
                      children: [
                        Row(
                          children: [
                            _singleItem(
                                containerSize: 326, imageSize: 309, index: 0),
                            SizedBox(width: 30),
                            _singleItem(
                                containerSize: 326, imageSize: 309, index: 1),
                            SizedBox(width: 30),
                            _singleItem(
                                containerSize: 326, imageSize: 309, index: 2),
                          ],
                        ),
                        SizedBox(height: 63),
                        Row(
                          children: [
                            _singleItem(
                                containerSize: 326, imageSize: 309, index: 3),
                            SizedBox(width: 30),
                            _singleItem(
                                containerSize: 326, imageSize: 309, index: 4),
                            SizedBox(width: 30),
                            _singleItem(
                                containerSize: 326, imageSize: 309, index: 5),
                          ],
                        ),
                        SizedBox(height: 63),
                        Row(
                          children: [
                            _singleItem(
                                containerSize: 326, imageSize: 309, index: 0),
                            SizedBox(width: 30),
                            _singleItem(
                                containerSize: 326, imageSize: 309, index: 0),
                            SizedBox(width: 30),
                            _singleItem(
                                containerSize: 326, imageSize: 309, index: 0),
                          ],
                        ),
                        SizedBox(height: 63),
                        Row(
                          children: [
                            _singleItem(
                                containerSize: 326, imageSize: 309, index: 0),
                            SizedBox(width: 30),
                            _singleItem(
                                containerSize: 326, imageSize: 309, index: 0),
                            SizedBox(width: 30),
                            _singleItem(
                                containerSize: 326, imageSize: 309, index: 0),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 60),
            Row(
              children: [
                SizedBox(width: 581),
                Container(
                  width: 371,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        width: 32,
                        height: 32,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Color.fromRGBO(240, 240, 240, 1),
                          ),
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: Icon(
                          Icons.arrow_back_ios_new_rounded,
                          size: 11,
                        ),
                      ),
                      Container(
                        width: 32,
                        height: 32,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: louisColor),
                        child: Center(
                          child:
                              Text('1', style: TextStyle(color: Colors.white)),
                        ),
                      ),
                      Container(
                        width: 32,
                        height: 32,
                        child: Center(
                          child:
                              Text('2', style: TextStyle(color: Colors.grey)),
                        ),
                      ),
                      Container(
                        width: 32,
                        height: 32,
                        child: Center(
                          child:
                              Text('3', style: TextStyle(color: Colors.grey)),
                        ),
                      ),
                      Container(
                        width: 32,
                        height: 32,
                        child: Center(
                          child:
                              Text('4', style: TextStyle(color: Colors.grey)),
                        ),
                      ),
                      Container(
                        width: 32,
                        height: 32,
                        child: Center(
                          child:
                              Text('5', style: TextStyle(color: Colors.grey)),
                        ),
                      ),
                      Container(
                        width: 32,
                        height: 32,
                        child: Center(
                          child:
                              Text('6', style: TextStyle(color: Colors.grey)),
                        ),
                      ),
                      Container(
                        width: 32,
                        height: 32,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Color.fromRGBO(240, 240, 240, 1),
                          ),
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: Icon(
                          Icons.arrow_forward_ios_rounded,
                          size: 11,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _categoryImageText({index, text}) {
    return Column(
      children: [
        Image.asset(
          'assets/images/petfood${index}.png',
          width: 80,
          height: 101,
        ),
        Text('${text}'),
      ],
    );
  }

  Widget _singleItem({containerSize, imageSize, index}) {
    return Container(
      width: containerSize,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: containerSize,
            height: containerSize,
            decoration: BoxDecoration(
              color: Color.fromRGBO(240, 240, 240, 1),
            ),
            child: Stack(
              children: [
                Positioned(
                  left: 9,
                  top: 9,
                  child: Image.asset(
                    'assets/images/petfood${index}.png',
                    width: imageSize,
                    height: imageSize,
                  ),
                ),
                Positioned(
                  left: 282,
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
              _shoppingcartButton(radius: 34, size: 19),
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

  Column _category() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '카테고리',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 17),
        Container(width: 178, height: 1, color: Colors.black),
        SizedBox(height: 20),
        Container(
          width: 178,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '사료',
                style: TextStyle(
                  color: louisColor,
                ),
              ),
              Icon(
                Icons.keyboard_arrow_up,
                color: louisColor,
                size: 24,
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(14.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('ALL', style: TextStyle(color: louisColor)),
              SizedBox(height: 14),
              Text('건식', style: TextStyle(color: Colors.grey)),
              SizedBox(height: 14),
              Text('습식', style: TextStyle(color: Colors.grey)),
              SizedBox(height: 14),
              Text('자연식', style: TextStyle(color: Colors.grey)),
              SizedBox(height: 14),
              Text('동결건조/에어드라이', style: TextStyle(color: Colors.grey)),
              SizedBox(height: 14),
              Text('처방식', style: TextStyle(color: Colors.grey)),
              SizedBox(height: 14),
              Text('토퍼/믹서', style: TextStyle(color: Colors.grey)),
            ],
          ),
        ),
        Text('간식'),
        SizedBox(height: 17),
        Text('영양제'),
        SizedBox(height: 17),
        Text('장난감'),
        SizedBox(height: 17),
        Text('목줄/리드줄/하네스'),
        SizedBox(height: 17),
        Text('산책용품'),
        SizedBox(height: 17),
        Text('미용/위생 용품'),
        SizedBox(height: 17),
        Text('배변/위생'),
        SizedBox(height: 17),
        Text('패션/의류'),
        SizedBox(height: 17),
        Text('홈/리빙'),
        SizedBox(height: 17),
        Text('이동장'),
        SizedBox(height: 43),
        Container(
          width: 176,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('필터',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
              Container(
                width: 73,
                height: 32,
                decoration:
                    BoxDecoration(border: Border.all(color: Colors.grey)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.refresh, size: 16),
                    Text('초기화'),
                  ],
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 15),
        Container(width: 178, height: 1, color: Colors.black),
        SizedBox(height: 20),
        _upwardArrowText(text: '연령'),
        SizedBox(height: 18),
        _customCheckBox(text: '전연령'),
        SizedBox(height: 16),
        _customCheckBox(text: '퍼피'),
        SizedBox(height: 16),
        _customCheckBox(text: '어덜트'),
        SizedBox(height: 16),
        _customCheckBox(text: '시니어'),
        SizedBox(height: 21),
        Container(
            width: 178, height: 1, color: Color.fromRGBO(240, 240, 240, 1)),
        SizedBox(height: 20),
        _upwardArrowText(text: '브랜드'),
        SizedBox(height: 18),
        _customCheckBox(text: '오리젠'),
        SizedBox(height: 16),
        _customCheckBox(text: '아카나'),
        SizedBox(height: 16),
        _customCheckBox(text: '파미나'),
        SizedBox(height: 16),
        _customCheckBox(text: '지위픽'),
        SizedBox(height: 16),
        _customCheckBox(text: '인스팅트'),
        SizedBox(height: 16),
        _customCheckBox(text: '맥아담스'),
        SizedBox(height: 16),
        Container(
          width: 178,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('더보기', style: TextStyle(fontSize: 12, color: Colors.grey)),
              Icon(
                Icons.keyboard_arrow_down,
                color: Colors.grey,
                size: 20,
              ),
            ],
          ),
        ),
        SizedBox(height: 20),
        Container(width: 167, height: 1, color: Colors.grey),
        SizedBox(height: 20),
        _upwardArrowText(text: '주원료'),
        SizedBox(height: 18),
        _customCheckBox(text: '소고기'),
        SizedBox(height: 16),
        _customCheckBox(text: '돼지고기'),
        SizedBox(height: 16),
        _customCheckBox(text: '닭고기'),
        SizedBox(height: 16),
        _customCheckBox(text: '사슴고기'),
        SizedBox(height: 16),
        _customCheckBox(text: '토끼고기'),
        SizedBox(height: 16),
        _customCheckBox(text: '양고기'),
        SizedBox(height: 20),
        Container(width: 167, height: 1, color: Colors.grey),
        SizedBox(height: 20),
        _upwardArrowText(text: '기능'),
        SizedBox(height: 18),
        _customCheckBox(text: '다이어트'),
        SizedBox(height: 16),
        _customCheckBox(text: '알러지 예방'),
        SizedBox(height: 16),
        _customCheckBox(text: '뼈/관전 강화'),
        SizedBox(height: 20),
        Container(width: 167, height: 1, color: Colors.grey),
        SizedBox(height: 20),
        _upwardArrowText(text: '알갱이 크기'),
        SizedBox(height: 18),
        _customRadioButton(text: '작은 알갱이'),
        SizedBox(height: 16),
        _customRadioButton(text: '보통 알갱이'),
        SizedBox(height: 16),
        _customRadioButton(text: '큰 알갱이'),
        SizedBox(height: 20),
        Container(width: 167, height: 1, color: Colors.grey),
        SizedBox(height: 20),
        _upwardArrowText(text: '특징'),
        SizedBox(height: 18),
        _customRadioButton(text: '유기농'),
        SizedBox(height: 16),
        _customRadioButton(text: '그레인프리'),
        SizedBox(height: 16),
        _customRadioButton(text: '가수분해'),
        SizedBox(height: 20),
        Container(width: 167, height: 1, color: Colors.grey),
      ],
    );
  }

  Row _customRadioButton({text}) {
    return Row(
      children: [
        Icon(Icons.radio_button_off, color: Colors.grey, size: 18),
        SizedBox(width: 10),
        Text('${text}'),
      ],
    );
  }

  Container _upwardArrowText({text}) {
    return Container(
      width: 178,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text('${text}'),
          Icon(Icons.keyboard_arrow_up, color: louisColor, size: 24),
        ],
      ),
    );
  }

  Row _customCheckBox({text}) {
    return Row(
      children: [
        Icon(Icons.check_box_outline_blank, color: Colors.grey, size: 18),
        SizedBox(width: 10),
        Text('${text}'),
      ],
    );
  }
}
