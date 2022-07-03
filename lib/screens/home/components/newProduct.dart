import 'package:flutter/material.dart';
import 'package:louishome_web/components/constants.dart';
import '../../../components/verticalProductForm.dart';

class NewProduct extends StatelessWidget {
  const NewProduct({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: centerWidth,
      height: 892,
      child: Column(
        children: [
          SizedBox(height: 160),
          Text(
            '따끈따끈 신상품',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10),
          Text(
            '어떤 제품들이 루이스홈에 입고되었을까요?',
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: Colors.grey,
            ),
          ),
          SizedBox(height: 60),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              VerticalProductForm(
                index: 0,
                width: 303,
                height: 358,
                imageSize: 303,
                shoppingCartButtonRadius: 34,
                fontSize: 14,
                showRecommendContainer: true,
                showShoppingCart: false,
              ),
              VerticalProductForm(
                index: 1,
                width: 303,
                height: 358,
                imageSize: 303,
                shoppingCartButtonRadius: 34,
                fontSize: 14,
                showRecommendContainer: true,
                showShoppingCart: false,
              ),
              VerticalProductForm(
                index: 2,
                width: 303,
                height: 358,
                imageSize: 303,
                shoppingCartButtonRadius: 34,
                fontSize: 14,
                showRecommendContainer: true,
                showShoppingCart: false,
              ),
              VerticalProductForm(
                index: 3,
                width: 303,
                height: 358,
                imageSize: 303,
                shoppingCartButtonRadius: 34,
                fontSize: 14,
                showRecommendContainer: true,
                showShoppingCart: false,
              ),
            ],
          )
        ],
      ),
    );
  }
}
