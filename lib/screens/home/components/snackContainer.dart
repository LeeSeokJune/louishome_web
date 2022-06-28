import 'package:flutter/material.dart';
import 'package:louishome_web/components/constants.dart';

class SnackContainer extends StatelessWidget {
  const SnackContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: centerWidth,
      height: 470,
      child: Column(
        children: [
          Text.rich(
            TextSpan(
              style: TextStyle(fontSize: 26),
              children: [
                TextSpan(text: '혹시 이런 '),
                TextSpan(
                    text: '간식', style: TextStyle(fontWeight: FontWeight.bold)),
                TextSpan(text: ' 찾고 계신가요?'),
              ],
            ),
          ),
          SizedBox(height: 40),
          Row(
            children: [
              SizedBox(width: 85),
              _snackContainer(
                index: 0,
                categoryText: '간식',
                subCategoryText: '비건 간식류',
              ),
              SizedBox(width: 30),
              _snackContainer(
                index: 1,
                categoryText: '간식',
                subCategoryText: '알러지 최소화 육류간식',
              ),
              SizedBox(width: 30),
              _snackContainer(
                index: 2,
                categoryText: '저알러지',
                subCategoryText: '오래먹는 간식',
              ),
              SizedBox(width: 30),
              _snackContainer(
                index: 3,
                categoryText: '저알러지',
                subCategoryText: '부드러운 간식',
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _snackContainer({index, categoryText, subCategoryText}) {
    return Container(
      width: 260,
      height: 340,
      child: Stack(
        children: [
          Positioned(
            left: 0,
            top: 70,
            child: Container(
              width: 260,
              height: 260,
              color: Color.fromRGBO(240, 240, 240, 1),
            ),
          ),
          Positioned(
            left: 18,
            top: 0,
            child: Image.asset(
              'assets/images/petfood${index}.png',
              width: 234,
              height: 234,
            ),
          ),
          Positioned(
            left: 93,
            top: 238,
            child: Container(
              width: 74,
              height: 28,
              color: Color.fromRGBO(230, 230, 230, 1),
              child: Center(child: Text(categoryText)),
            ),
          ),
          Positioned(
            left: 41,
            top: 282,
            child: Text(
              subCategoryText,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
