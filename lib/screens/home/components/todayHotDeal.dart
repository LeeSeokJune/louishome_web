import 'package:flutter/material.dart';
import 'package:louishome_web/components/constants.dart';
import 'package:louishome_web/components/imagesPath.dart';

class TodayHotDeal extends StatelessWidget {
  const TodayHotDeal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: basicWidth,
      decoration: BoxDecoration(
        color: Color.fromRGBO(245, 245, 245, 1),
      ),
      child: Center(
        child: Container(
          width: centerWidth,
          height: 951,
          child: Column(
            children: [
              SizedBox(
                height: 163,
              ),
              Text(
                '오늘핫딜',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              Text(
                '놓치면 후회할 가격!',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: Colors.grey,
                ),
              ),
              SizedBox(height: 20),
              _clock(),
              SizedBox(height: 60),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _hotdealProductBox(index: 0),
                  _hotdealProductBox(index: 1),
                  _hotdealProductBox(index: 2),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _clock() {
    return Container(
      width: 146,
      height: 38,
      child: Row(
        children: [
          Image.asset(
            IconPath.hotdeal_clock,
          ),
          SizedBox(width: 6),
          Text(
            '19:42:13',
            style: TextStyle(
              fontSize: 26,
              fontWeight: FontWeight.bold,
              color: louisColor,
            ),
          ),
        ],
      ),
    );
  }

  Widget _hotdealProductBox({index}) {
    return Container(
      width: 407,
      height: 407,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(250),
          topRight: Radius.circular(250),
        ),
      ),
      child: Stack(
        children: [
          Positioned(
            left: 77,
            top: 109,
            child: Image.asset(
              'assets/images/petfood${index}.png',
              height: 189,
              width: 253,
            ),
          ),
          Positioned(
            left: 20,
            top: 312,
            child: Text(
              '강아지',
              style: TextStyle(
                fontSize: 14,
                color: Colors.grey,
              ),
            ),
          ),
          Positioned(
            left: 20,
            top: 337,
            child: Text(
              '강아지 하네스 3종 SET',
              style: TextStyle(
                fontSize: 16,
              ),
            ),
          ),
          Positioned(
            left: 20,
            top: 367,
            child: Row(
              children: [
                Text(
                  '28%',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue,
                  ),
                ),
                SizedBox(width: 10),
                Text(
                  '55,800원',
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
          )
        ],
      ),
    );
  }
}
