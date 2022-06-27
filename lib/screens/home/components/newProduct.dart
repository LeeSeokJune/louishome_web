import 'package:flutter/material.dart';
import 'package:louishome_web/components/constants.dart';
import 'package:louishome_web/components/imagesPath.dart';

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
              _prdouctForm(index: 0),
              _prdouctForm(index: 1),
              _prdouctForm(index: 2),
              _prdouctForm(index: 3),
            ],
          )
        ],
      ),
    );
  }

  Widget _prdouctForm({index}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 303,
          height: 358,
          decoration: BoxDecoration(color: Color.fromRGBO(234, 234, 234, 1)),
          child: Container(
            height: 303,
            child: Stack(
              children: [
                Positioned(
                  left: 0,
                  top: 28,
                  child: Image.asset(
                    'assets/images/petfood${index}.png',
                    width: 303,
                    height: 303,
                  ),
                ),
                Positioned(
                  left: 257,
                  top: 16,
                  child: Image.asset(
                    IconPath.favorite,
                  ),
                )
              ],
            ),
          ),
        ),
        SizedBox(height: 13),
        Text(
          '강아지',
          style: TextStyle(
            fontSize: 16,
            color: Colors.grey,
          ),
        ),
        SizedBox(height: 8),
        Text(
          '유기농 강아지 건조 사료',
          style: TextStyle(
            fontSize: 16,
          ),
        ),
        SizedBox(height: 10),
        Row(
          children: [
            Text(
              '55,800원',
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey,
                decoration: TextDecoration.lineThrough,
              ),
            ),
            Text(
              '35,800원',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        )
      ],
    );
  }
}
