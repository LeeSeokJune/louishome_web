import 'package:flutter/material.dart';
import '../../../components/calWidth.dart';
import '../../../components/constants.dart';
import '../../../components/imagesPath.dart';

class StarterGuide extends StatelessWidget {
  const StarterGuide({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: basicWidth,
      height: 248,
      child: Stack(
        children: [
          Container(
            width: basicWidth,
            height: 248,
            child: Image.asset(
              ImagesPath.starter_dog_main,
              fit: BoxFit.fill,
            ),
          ),
          Positioned(
            left: calWidth(context),
            top: 104,
            child: Text(
              '새로운 가족을 맞이하기 위한 루이스홈 가이드',
              style: TextStyle(fontSize: 38, fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}
