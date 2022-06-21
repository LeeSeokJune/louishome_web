import 'package:flutter/material.dart';
import 'package:louishome_web/components/constants.dart';
import 'package:louishome_web/screens/curation/components/CurationIconBox.dart';

class Curation1Screen extends StatelessWidget {
  const Curation1Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          SizedBox(height: 70),
          _curationSteps(),
          _box(),
        ],
      ),
    );
  }

  Widget _box() {
    return Container(
      width: basicWidth,
      height: 836,
      decoration: BoxDecoration(
        color: Color.fromRGBO(240, 240, 240, 1),
      ),
      child: _boxContents(),
    );
  }

  Widget _boxContents() {
    // 높이-536
    return Stack(
      children: [
        Positioned(
          left: 183,
          top: 63,
          child: Text(
            '내 반려동물의 기본정보를 알려주세요.',
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
              letterSpacing: -2.5,
            ),
          ),
        ),
        _inputName(),
      ],
    );
  }

  Widget _inputName() {
    return Stack(
      children: [
        Positioned(
          left: 183,
          top: 180,
          child: Text(
            '이름',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
          ),
        ),
      ],
    );
  }

  Widget _curationSteps() {
    return Container(
      height: 290,
      width: centerWidth,
      child: Stack(
        children: [
          Positioned(
            left: 535,
            top: 0,
            child: Text(
              '맞춤 AI 추천',
              style: TextStyle(
                  fontSize: 48,
                  fontWeight: FontWeight.bold,
                  letterSpacing: letterSpacing),
            ),
          ),
          CurationIconBox(type: CurationPageName.BASICINFO.index),
        ],
      ),
    );
  }
}
