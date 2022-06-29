import 'package:flutter/material.dart';

import '../../../components/constants.dart';
import '../../../components/imagesPath.dart';

class ProductOrderInfo extends StatelessWidget {
  const ProductOrderInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _leftSmallImages(),
        SizedBox(width: 20),
        _productBigImage(),
        SizedBox(width: 60),
        _productRightInfo(),
      ],
    );
  }

  Column _leftSmallImages() {
    return Column(
      children: [
        _smallImageContainer(index: 0),
        SizedBox(height: 20),
        _smallImageContainer(index: 1),
        SizedBox(height: 20),
        _smallImageContainer(index: 2),
      ],
    );
  }

  Widget _smallImageContainer({index}) {
    return Container(
      width: 67,
      height: 67,
      decoration: BoxDecoration(border: Border.all(color: Colors.black)),
      child: Image.asset(
        'assets/images/product${index}.png',
        width: 58,
        height: 58,
      ),
    );
  }

  Container _productBigImage() {
    return Container(
      width: 557,
      height: 556,
      color: Color.fromRGBO(240, 240, 240, 1),
      child: Image.asset(
        ImagesPath.product_main,
        width: 489,
        height: 489,
      ),
    );
  }

  Column _productRightInfo() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '강아지',
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w400,
            color: Colors.grey,
          ),
        ),
        SizedBox(height: 9),
        Text(
          '유기농 강아지 건조 사료',
          style: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 18),
        Row(
          children: [
            _getStar(count: 5, reviewCount: 54),
          ],
        ),
        SizedBox(height: 21),
        Container(width: 518, height: 1, color: Colors.black),
        SizedBox(height: 20),
        Text(
          '55,800원',
          style: TextStyle(
            fontSize: 21,
            color: Colors.grey,
            decoration: TextDecoration.lineThrough,
          ),
        ),
        Row(
          children: [
            Text(
              '28%',
              style: TextStyle(
                fontSize: 27,
                fontWeight: FontWeight.bold,
                color: Colors.blue,
              ),
            ),
            SizedBox(width: 5),
            Text(
              '35,800원',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        SizedBox(
          height: 17,
        ),
        Row(
          children: [
            Text(
              '정기구독시 적립금',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(width: 5),
            Text(
              '360원 적립',
              style: TextStyle(fontWeight: FontWeight.bold, color: Colors.blue),
            )
          ],
        ),
        SizedBox(height: 10),
        _membershipInfoContainer(),
        SizedBox(height: 22),
        Container(
            width: 518, height: 1, color: Color.fromRGBO(238, 238, 238, 1)),
        SizedBox(height: 22),
        Row(
          children: [Text('사이즈'), SizedBox(width: 46), Text('10KG')],
        ),
        SizedBox(height: 22),
        Container(
            width: 518, height: 1, color: Color.fromRGBO(238, 238, 238, 1)),
        SizedBox(height: 22),
        Row(
          children: [Text('수량'), SizedBox(width: 60), Text('1개')],
        ),
        SizedBox(height: 22),
        Container(
            width: 518, height: 1, color: Color.fromRGBO(238, 238, 238, 1)),
        SizedBox(height: 20),
        _productCountContainer(),
        SizedBox(height: 20),
        _productOrderButtons()
      ],
    );
  }

  Row _productOrderButtons() {
    return Row(
      children: [
        Container(
          width: 86,
          height: 52,
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.black,
            ),
          ),
          child: Center(
            child: Icon(
              Icons.favorite_border_outlined,
              size: 24,
            ),
          ),
        ),
        SizedBox(width: 10),
        Container(
          width: 206,
          height: 52,
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.black,
            ),
          ),
          child: Center(
              child: Text(
            '장바구니',
            style: TextStyle(fontSize: 18),
          )),
        ),
        SizedBox(width: 10),
        Container(
          width: 206,
          height: 52,
          decoration: BoxDecoration(color: louisColor),
          child: Center(
              child: Text(
            '구매하기',
            style: TextStyle(color: Colors.white),
          )),
        ),
      ],
    );
  }

  Container _membershipInfoContainer() {
    return Container(
      width: 518,
      height: 166,
      color: Color.fromRGBO(240, 240, 240, 1),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '멤버십 혜택',
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 13),
            Text('• 멤버십 고객은 온오프라인 매장 이용시 5% 적립됩니다.'),
            SizedBox(height: 9),
            Text('• 라이프 스테이지를 고려한 제품 추천 및 건강 케어 서비스가 제공됩니다.'),
            SizedBox(height: 9),
            Text('• 제휴 병원 할인 혜택'),
            SizedBox(height: 9),
            Text('• 당장 취소하더라도 위약급이 발생하지 않습니다.'),
          ],
        ),
      ),
    );
  }

  Container _productCountContainer() {
    return Container(
      width: 518,
      height: 100,
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.black,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(19),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('유기농 강아지 건조 사료'),
                SizedBox(height: 10),
                _productCountWidget(),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text('총 상품 금액'),
                SizedBox(height: 15),
                Text(
                  '35,800원',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Container _productCountWidget() {
    return Container(
      width: 110,
      height: 32,
      child: Stack(
        children: [
          Positioned(
            left: 0,
            top: 0,
            child: Container(
              width: 31,
              height: 30,
              decoration:
                  BoxDecoration(border: Border.all(color: Colors.black)),
              child: Center(child: Text('-')),
            ),
          ),
          Positioned(
            left: 30,
            top: 0,
            child: Container(
              width: 51,
              height: 30,
              decoration:
                  BoxDecoration(border: Border.all(color: Colors.black)),
              child: Center(child: Text('1')),
            ),
          ),
          Positioned(
            left: 80,
            top: 0,
            child: Container(
              width: 30,
              height: 30,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
              ),
              child: Center(child: Text('+')),
            ),
          ),
        ],
      ),
    );
  }

  Widget _getStar({count, reviewCount}) {
    return Row(
      children: [
        for (var i = 0; i < count; i++)
          Image.asset(
            IconPath.star_fill,
            width: 16,
            height: 16,
          ),
        Text(
          '$count',
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w400,
          ),
        ),
        SizedBox(width: 6),
        Text(
          '$reviewCount',
          style: TextStyle(
            fontSize: 14,
            color: Colors.grey,
            decoration: TextDecoration.underline,
          ),
        ),
      ],
    );
  }
}
