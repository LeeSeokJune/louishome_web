import 'package:flutter/material.dart';

import '../../../components/constants.dart';
import '../../../components/imagesPath.dart';

class Review extends StatelessWidget {
  const Review({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: centerWidth,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            children: [
              Text('리뷰',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              SizedBox(width: 10),
              Text('(56)', style: TextStyle(fontSize: 21, color: Colors.grey)),
            ],
          ),
          SizedBox(height: 20),
          Container(width: centerWidth, height: 1, color: Colors.black),
          SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.star,
                  color: Color.fromRGBO(245, 165, 34, 1), size: 27),
              Icon(Icons.star,
                  color: Color.fromRGBO(245, 165, 34, 1), size: 27),
              Icon(Icons.star,
                  color: Color.fromRGBO(245, 165, 34, 1), size: 27),
              Icon(Icons.star,
                  color: Color.fromRGBO(245, 165, 34, 1), size: 27),
              Icon(Icons.star,
                  color: Color.fromRGBO(245, 165, 34, 1), size: 27),
            ],
          ),
          Text(
            '4.9/5',
            style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 50),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(ImagesPath.review_dog),
              Image.asset(ImagesPath.review_dog),
              Image.asset(ImagesPath.review_dog),
              Image.asset(ImagesPath.review_dog),
              Image.asset(ImagesPath.review_dog),
              Image.asset(ImagesPath.review_dog),
              Image.asset(ImagesPath.review_dog),
              Image.asset(ImagesPath.review_dog),
              Image.asset(ImagesPath.review_dog),
              Image.asset(ImagesPath.review_dog),
              Image.asset(ImagesPath.review_dog),
            ],
          ),
          SizedBox(height: 20),
          Container(
              width: centerWidth,
              height: 1,
              color: Color.fromRGBO(240, 240, 240, 1)),
          SizedBox(height: 40),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('총 56건', style: TextStyle(fontSize: 15)),
              Row(
                children: [
                  Text(
                    '도움돼요순',
                    style: TextStyle(fontSize: 15),
                  ),
                  SizedBox(width: 10),
                  Container(
                    width: 1,
                    height: 10,
                    color: Color.fromRGBO(230, 230, 230, 1),
                  ),
                  SizedBox(width: 10),
                  Text(
                    '랭킹순',
                    style: TextStyle(fontSize: 15, color: Colors.grey),
                  ),
                  SizedBox(width: 10),
                  Container(
                    width: 1,
                    height: 10,
                    color: Color.fromRGBO(230, 230, 230, 1),
                  ),
                  SizedBox(width: 10),
                  Text(
                    '최신순',
                    style: TextStyle(fontSize: 15, color: Colors.grey),
                  ),
                  SizedBox(width: 20),
                  Container(
                    width: 76,
                    height: 44,
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: Color.fromRGBO(240, 240, 240, 1))),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.tune, size: 20),
                        SizedBox(width: 6),
                        Text('필터'),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
          _review_widget(),
          _review_widget(),
          _review_widget(),
          _review_widget(),
          SizedBox(height: 60),
          _reviewPageController(),
        ],
      ),
    );
  }

  Container _reviewPageController() {
    return Container(
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
                borderRadius: BorderRadius.circular(50), color: louisColor),
            child: Center(
              child: Text('1', style: TextStyle(color: Colors.white)),
            ),
          ),
          Container(
            width: 32,
            height: 32,
            child: Center(
              child: Text('2', style: TextStyle(color: Colors.grey)),
            ),
          ),
          Container(
            width: 32,
            height: 32,
            child: Center(
              child: Text('3', style: TextStyle(color: Colors.grey)),
            ),
          ),
          Container(
            width: 32,
            height: 32,
            child: Center(
              child: Text('4', style: TextStyle(color: Colors.grey)),
            ),
          ),
          Container(
            width: 32,
            height: 32,
            child: Center(
              child: Text('5', style: TextStyle(color: Colors.grey)),
            ),
          ),
          Container(
            width: 32,
            height: 32,
            child: Center(
              child: Text('6', style: TextStyle(color: Colors.grey)),
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
    );
  }

  Widget _review_widget() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 35),
        Row(
          children: [
            Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color.fromRGBO(240, 240, 240, 1),
              ),
              child: Icon(
                Icons.person,
                size: 24,
              ),
            ),
            SizedBox(width: 6),
            Text('hyan**', style: TextStyle(fontSize: 18)),
          ],
        ),
        SizedBox(height: 16),
        Row(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.star, color: Color.fromRGBO(245, 165, 34, 1), size: 17),
            Icon(Icons.star, color: Color.fromRGBO(245, 165, 34, 1), size: 17),
            Icon(Icons.star, color: Color.fromRGBO(245, 165, 34, 1), size: 17),
            Icon(Icons.star, color: Color.fromRGBO(245, 165, 34, 1), size: 17),
            Icon(Icons.star, color: Color.fromRGBO(245, 165, 34, 1), size: 17),
            SizedBox(width: 3),
            Text('4.9'),
          ],
        ),
        SizedBox(height: 9),
        Text('판매자 : (주)루이스홈', style: TextStyle(color: Colors.grey)),
        SizedBox(height: 22),
        Text('항상 울집 댕이 사료!\n유기농이라 더 좋아요!!'),
        SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Icon(Icons.mood, size: 17),
                SizedBox(width: 7),
                Text('도움돼요 1'),
                SizedBox(width: 17),
                Icon(Icons.sms_outlined, size: 17),
                SizedBox(width: 7),
                Text('0'),
              ],
            ),
            Text(
              '2022.06.06',
              style: TextStyle(fontSize: 13, color: Colors.grey),
            ),
          ],
        ),
        SizedBox(height: 23),
        Container(
            width: centerWidth,
            height: 1,
            color: Color.fromRGBO(240, 240, 240, 1)),
      ],
    );
  }
}
