import 'package:flutter/material.dart';

import '../../../components/constants.dart';

class BestProduct extends StatelessWidget {
  const BestProduct({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: centerWidth,
      height: 1112,
      child: Stack(
        children: [
          Positioned(
            left: 583,
            top: 0,
            child: Text(
              '베스트 상품',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Positioned(
            left: 559,
            top: 46,
            child: Text('이번주 가장 인기있는 상품이에요.'),
          ),
          Positioned(
            left: 18,
            top: 233,
            child: _bestProductDetailBox(index: 0),
          ),
          Positioned(
            left: 453,
            top: 150,
            child: _bestProductDetailBox(index: 1),
          ),
          Positioned(
            left: 888,
            top: 233,
            child: _bestProductDetailBox(index: 2),
          ),
          Positioned(
            left: 530,
            top: 862,
            child: _viewMoreButton(),
          ),
        ],
      ),
    );
  }

  Widget _bestProductDetailBox({index}) {
    return Container(
      width: 395,
      height: 550,
      child: Stack(
        children: [
          _bestProcutForm(index: index),
          _bestProductText(),
        ],
      ),
    );
  }

  Widget _bestProcutForm({index}) {
    return Stack(
      children: [
        Container(
          height: 550,
        ),
        Positioned(
          top: 24,
          child: Container(
            width: 395,
            height: 453,
            decoration: BoxDecoration(
              color: Color.fromRGBO(240, 240, 240, 1),
            ),
            child: Image.asset(
              'assets/images/petfood${index}.png',
              width: 330,
              height: 330,
            ),
          ),
        ),
        Positioned(
          left: 136,
          top: 0,
          child: Container(
            width: 123,
            height: 49,
            decoration: BoxDecoration(
              color: louisColor,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Center(
              child: Text(
                'BEST',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                  letterSpacing: 2,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _bestProductText() {
    return Stack(
      children: [
        Positioned(
          left: 125,
          top: 495,
          child: Text(
            '유기농 강아지 건조 사료',
            style: TextStyle(fontSize: 16),
          ),
        ),
        Positioned(
          left: 105,
          top: 525,
          child: Row(
            children: [
              Text(
                '28%',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Color.fromRGBO(20, 106, 240, 1),
                ),
              ),
              SizedBox(width: 10),
              Text(
                '55,800',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                  decoration: TextDecoration.lineThrough,
                ),
              ),
              SizedBox(width: 10),
              Text(
                '35,800원',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _viewMoreButton() {
    return Container(
      width: 240,
      height: 60,
      decoration: BoxDecoration(
        color: louisColor,
      ),
      child: Center(
        child: Text(
          '상품 더 보기',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
