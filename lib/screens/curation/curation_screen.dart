import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:louishome_web/components/constants.dart';
import 'package:louishome_web/components/imagesPath.dart';
import 'package:louishome_web/controller/pages_controller.dart';

class CurationScreen extends StatelessWidget {
  CurationScreen({Key? key}) : super(key: key);
  final pagesController = Get.put(PagesController());
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          SizedBox(height: 60),
          Container(
            height: 688,
            child: Stack(
              children: [
                _contents(),
                _box(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _box() {
    return Center(
      child: Container(
        width: basicWidth,
        height: 688,
        decoration: BoxDecoration(
          color: Color.fromRGBO(250, 240, 240, 1),
        ),
        child: _contents(),
      ),
    );
  }

  Widget _contents() {
    // -177
    return Center(
      child: Container(
        width: centerWidth,
        height: 688,
        child: Stack(
          children: [
            Positioned(
              left: 0,
              top: 202,
              child: Container(
                width: 607,
                height: 288,
                child: Text(
                  '반려동물의 체질 기호성에 맞는 제품을 찾아볼래요?',
                  style: TextStyle(
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Positioned(
              left: 0,
              top: 363,
              child: Text('내 반려동물에게 딱 맞는 제품을 찾아보세요!',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500)),
            ),
            Positioned(
              left: 0,
              top: 437,
              child: InkWell(
                  child: Container(
                    width: 200,
                    height: 54,
                    decoration: BoxDecoration(color: louisColor),
                    child: Center(
                      child: Text(
                        '지금 시작하기',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                  onTap: () {
                    pagesController.changePage(PageName.CURATION1.index);
                  }),
            ),
            Positioned(
                left: 721,
                top: 123,
                child: Image.asset(
                  ImagesPath.petfood_group,
                  height: 442,
                )),
          ],
        ),
      ),
    );
  }
}
