import 'package:flutter/material.dart';
import '../../../components/constants.dart';

class StarterPageController extends StatelessWidget {
  const StarterPageController({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _pageButton(index: 0, text: '식품관'),
        _pageButton(index: 1, text: '홈/리빙'),
        _pageButton(index: 1, text: '미용/위생'),
        _pageButton(index: 1, text: '산책용품'),
      ],
    );
  }

  Container _pageButton({index, text}) {
    return Container(
      width: 123,
      height: 49,
      decoration: index == 0
          ? BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: louisColor,
            )
          : BoxDecoration(),
      child: Center(
        child: Text(
          text,
          style: TextStyle(
            fontWeight: FontWeight.w600,
            color: index == 0 ? Colors.white : Colors.black,
          ),
        ),
      ),
    );
  }
}
