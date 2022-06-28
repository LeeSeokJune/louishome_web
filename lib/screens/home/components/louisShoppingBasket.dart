import 'package:flutter/material.dart';
import 'package:louishome_web/components/constants.dart';
import 'package:louishome_web/components/imagesPath.dart';
import 'package:louishome_web/screens/home/components/mainBox.dart';

class LouisShoppingBasket extends StatelessWidget {
  const LouisShoppingBasket({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 1920,
      height: 828,
      decoration: BoxDecoration(
        color: Color.fromRGBO(240, 240, 240, 1),
      ),
      child: Center(
        child: Container(
          width: centerWidth,
          height: 688,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                children: [
                  Row(
                    children: [
                      _louisTextContainer(),
                      SizedBox(width: 20),
                      _productContainer(
                        mainText: '밥 & 물 보울',
                        price: '35,800원',
                        imagePath: ImagesPath.bowl,
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      _productContainer(
                        mainText: '강아지 장난감',
                        price: '35,800원',
                        imagePath: ImagesPath.dog_toy,
                      ),
                      SizedBox(width: 20),
                      _productContainer(
                        mainText: '오가닉 펫 샴푸',
                        price: '35,800원',
                        imagePath: ImagesPath.pet_shampoo,
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(width: 20),
              Container(
                width: 636,
                height: 688,
                color: Colors.white,
                child: Column(
                  children: [
                    SizedBox(height: 116),
                    Container(
                      width: 545,
                      height: 406,
                      child: Image.asset(ImagesPath.dog_bed),
                    ),
                    SizedBox(height: 104),
                    _textBox(mainText: '강아지 소파 스타일 침대', price: '35,800원'),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Container _productContainer({mainText, price, imagePath}) {
    return Container(
      width: 312,
      height: 332,
      color: Colors.white,
      child: Column(
        children: [
          SizedBox(height: 40),
          Container(
            height: 200,
            child: Image.asset(imagePath),
          ),
          SizedBox(height: 28),
          _textBox(mainText: mainText, price: price),
        ],
      ),
    );
  }

  Widget _textBox({mainText, price}) {
    return Column(
      children: [
        Text(
          mainText,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 3),
        Text(
          price,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }

  Container _louisTextContainer() {
    return Container(
      width: 312,
      height: 332,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 123),
          Text(
            '루이의 장바구니',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 16),
          Text('깐깐한 루사장님은'),
          Text('어떤 상품을 구매했을까요?'),
        ],
      ),
    );
  }
}
