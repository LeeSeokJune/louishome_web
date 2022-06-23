import 'package:flutter/material.dart';
import 'package:louishome_web/components/constants.dart';

import '../../../components/imagesPath.dart';

class CurationStepBox extends StatelessWidget {
  CurationStepBox({Key? key, required this.pageIndex}) : super(key: key);
  int pageIndex;
  @override
  Widget build(BuildContext context) {
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
          CurationIconBox(type: pageIndex),
        ],
      ),
    );
  }
}

class CurationIconBox extends StatelessWidget {
  CurationIconBox({Key? key, required this.type}) : super(key: key);
  int type;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          left: 456,
          top: 127,
          child: _textIcon(
              text: '기본정보', iconPath: IconPath.basic_info, type: type),
        ),
        Positioned(left: 542, top: 195, child: _horizontalBar()),
        Positioned(
          left: 610,
          top: 127,
          child: _textIcon(
              text: '현재 상태', iconPath: IconPath.current_state, type: type),
        ),
        Positioned(left: 696, top: 195, child: _horizontalBar()),
        Positioned(
            left: 770,
            top: 127,
            child:
                _textIcon(text: '완료', iconPath: IconPath.complete, type: type)),
      ],
    );
  }

  Widget _horizontalBar() {
    return Container(
      width: 60,
      height: 2,
      color: Color.fromRGBO(14, 14, 14, 1),
    );
  }

  Widget _textIcon({text, iconPath, type}) {
    final _colorFlag;
    if (type == 0 && iconPath == IconPath.basic_info) {
      _colorFlag = true;
    } else if (type == 1 && iconPath == IconPath.current_state) {
      _colorFlag = true;
    } else if (type == 2 && iconPath == IconPath.complete) {
      _colorFlag = true;
    } else {
      _colorFlag = false;
    }

    return Container(
      child: Column(
        children: [
          Text(
            text,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 15),
          Container(
            width: 78,
            height: 78,
            decoration: BoxDecoration(
              color: _colorFlag == true
                  ? louisColor
                  : Color.fromRGBO(240, 240, 240, 1),
              borderRadius: BorderRadius.circular(50),
            ),
            child: Image.asset(
              iconPath,
              height: 78,
              color: _colorFlag == false ? louisColor : Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
