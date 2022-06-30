import 'package:flutter/material.dart';

import '../../../components/constants.dart';

class ComparisonSimilarProducts extends StatelessWidget {
  const ComparisonSimilarProducts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: centerWidth,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '비슷한 제품 비교',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 20),
          Container(
            width: centerWidth,
            height: 1,
            color: Color.fromRGBO(240, 240, 240, 1),
          ),
          Container(
            height: 552,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(width: 1, height: 225),
                    Text('고객평가', style: TextStyle(color: Colors.grey)),
                    Text('가격', style: TextStyle(color: Colors.grey)),
                    Text('주요성분', style: TextStyle(color: Colors.grey)),
                    Text('특징', style: TextStyle(color: Colors.grey)),
                    Text('식품 형태', style: TextStyle(color: Colors.grey)),
                  ],
                ),
                _productInfo(index: 0),
                _productInfo(index: 1),
                _productInfo(index: 2),
                _productInfo(index: 3),
                _productInfo(index: 4),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Column _productInfo({index}) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
            width: 225,
            height: 225,
            child: Image.asset('assets/images/petfood${index}.png')),
        Row(
          children: [
            Icon(Icons.star, color: Color.fromRGBO(245, 165, 34, 1), size: 16),
            Icon(Icons.star, color: Color.fromRGBO(245, 165, 34, 1), size: 16),
            Icon(Icons.star, color: Color.fromRGBO(245, 165, 34, 1), size: 16),
            Icon(Icons.star, color: Color.fromRGBO(245, 165, 34, 1), size: 16),
            Icon(Icons.star, color: Color.fromRGBO(245, 165, 34, 1), size: 16),
            Text('4.9'),
          ],
        ),
        Row(
          children: [
            Text(
              '35,800원',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            SizedBox(width: 5),
            Text(
              '55,800원',
              style: TextStyle(
                  color: Colors.grey, decoration: TextDecoration.lineThrough),
            ),
          ],
        ),
        Container(
          width: 156,
          child: Text('뼈 없는 닭고기, 닭고기 가루, 현미, 보리, 오트밀'),
        ),
        Text('유기농'),
        Text('건조'),
      ],
    );
  }
}
