import 'package:flutter/material.dart';
import 'package:louishome_web/components/constants.dart';
import 'package:louishome_web/components/imagesPath.dart';

class VerticalProductForm extends StatelessWidget {
  VerticalProductForm({
    Key? key,
    required this.index,
    required this.width,
    required this.height,
    required this.imageSize,
    required this.shoppingCartButtonRadius,
    required this.fontSize,
    this.showRecommendContainer = false,
    this.showShoppingCart = true,
  }) : super(key: key);
  int index;
  bool showRecommendContainer;
  bool showShoppingCart;
  double width;
  double height;
  double imageSize;
  double shoppingCartButtonRadius;
  double fontSize;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _imageContainer(),
          _bottomText(),
        ],
      ),
    );
  }

  Widget _imageContainer() {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(color: Color.fromRGBO(238, 238, 238, 1)),
      child: Container(
        child: Stack(
          children: [
            Visibility(
              visible: showRecommendContainer,
              child:
                  Positioned(left: 0, top: 0, child: _recommendTextContainer()),
            ),
            Positioned(
              top: 12,
              right: 12,
              child: Icon(
                Icons.favorite_border_outlined,
                color: Colors.white,
                size: 28,
              ),
            ),
            Positioned(
              left: (width - imageSize) / 2,
              top: (height - imageSize) / 2,
              child: Container(
                width: imageSize,
                height: imageSize,
                child: Image.asset(
                  'assets/images/petfood${index}.png',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _recommendTextContainer() {
    return Container(
      width: 93,
      height: 34,
      color: louisColor,
      child: Center(
        child: Text(
          '루이스홈 추천',
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w400,
            color: Colors.white,
          ),
        ),
      ),
    );
  }

  Widget _bottomText() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 44),
        Container(
          height: 19,
          child: Text(
            '강아지',
            style: TextStyle(
                fontSize: fontSize,
                fontWeight: FontWeight.w400,
                color: Colors.grey),
          ),
        ),
        SizedBox(height: 7),
        Container(
          height: 21,
          child: Text(
            '유기농 강아지 간식',
            style: TextStyle(
              fontSize: fontSize + 2,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
        SizedBox(height: 20),
        Container(
          width: width,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    height: 32,
                    child: Text(
                      '35,800원',
                      style: TextStyle(
                          fontSize: fontSize + 10, fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(width: 16),
                  Container(
                    height: 22,
                    child: Text(
                      '55,800원',
                      style: TextStyle(
                        fontSize: fontSize + 2,
                        color: Colors.grey,
                        decoration: TextDecoration.lineThrough,
                      ),
                    ),
                  ),
                ],
              ),
              Visibility(
                  visible: showShoppingCart, child: _shoppingcartButton()),
            ],
          ),
        ),
      ],
    );
  }

  Widget _shoppingcartButton() {
    return Container(
      width: shoppingCartButtonRadius,
      height: shoppingCartButtonRadius,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        border: Border.all(
          color: Color.fromRGBO(221, 221, 221, 1),
        ),
      ),
      child: Image.asset(
        IconPath.shoppingcart,
        width: shoppingCartButtonRadius * 0.55,
        height: shoppingCartButtonRadius * 0.55,
      ),
    );
  }
}
