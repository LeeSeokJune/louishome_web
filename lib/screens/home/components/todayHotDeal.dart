import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:louishome_web/components/constants.dart';
import 'package:louishome_web/components/imagesPath.dart';

class TodayHotDeal extends StatelessWidget {
  const TodayHotDeal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: basicWidth,
      height: 951,
      decoration: BoxDecoration(
        color: Color.fromRGBO(245, 245, 245, 1),
      ),
      child: Center(
        child: Container(
          decoration: testLine,
          width: basicWidth,
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
              _hotdealProductBox()
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

  Widget _hotdealProductBox() {
    return Container(
      width: 407,
      height: 407,
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(100),
          topRight: Radius.circular(100),
        ),
      ),
    );
  }
}
