import 'package:flutter/material.dart';
import 'package:louishome_web/screens/curation/components/CurationStepBox.dart';

import '../../../components/constants.dart';

class CurationBox extends StatelessWidget {
  CurationBox(
      {Key? key,
      required this.height,
      required this.children,
      required this.pageIndex,
      this.showInfo = true})
      : super(key: key);
  List<Widget> children;
  double height;
  int pageIndex;
  bool showInfo;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          SizedBox(height: 70),
          CurationStepBox(pageIndex: pageIndex),
          _curationBox(),
        ],
      ),
    );
  }

  Widget _curationBox() {
    return Container(
      width: basicWidth,
      height: height,
      decoration: BoxDecoration(
        color: Color.fromRGBO(240, 240, 240, 1),
      ),
      child: _boxContents(),
    );
  }

  Widget _boxContents() {
    return Center(
      child: Container(
        width: centerWidth,
        height: height,
        child: Stack(
          children: [
            if (showInfo)
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
            Stack(
              children: children,
            ),
          ],
        ),
      ),
    );
  }
}
