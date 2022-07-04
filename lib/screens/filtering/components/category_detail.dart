import 'package:flutter/material.dart';

import '../../../components/constants.dart';

class CategoryDetail extends StatelessWidget {
  const CategoryDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
