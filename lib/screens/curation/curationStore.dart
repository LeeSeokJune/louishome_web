import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:louishome_web/components/constants.dart';
import 'package:louishome_web/components/imagesPath.dart';
import 'package:louishome_web/controller/curation_controller.dart';
import 'package:louishome_web/controller/curation_store_controller.dart';

class CurationStore extends StatelessWidget {
  CurationStore({Key? key}) : super(key: key);
  var curationController = Get.put(CurationController());
  var curationStoreController = Get.put(CurationStoreController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: centerWidth,
          child: Column(children: [
            SizedBox(
              height: 60,
            ),
            Container(
              height: 900,
              child: Stack(
                children: [
                  _petNameForm(),
                  _selectProductTypeForm(),
                  _selectPagesNumber(),
                  Obx(
                    () => IndexedStack(
                      index: curationStoreController.storePageIndex.value ~/ 2,
                      children: [
                        _petfoodFrom(),
                        _nutrientsForm(),
                        _snackForm(),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ]),
        ),
      ),
    );
  }

  Widget _selectPagesNumber() {
    return Stack(
      children: [
        Positioned(
          left: 1260,
          top: 117,
          child: _selectPageBox(index: 0),
        ),
        Positioned(
          left: 1288,
          top: 117,
          child: _selectPageBox(index: 1),
        ),
      ],
    );
  }

  Widget _selectPageBox({index}) {
    return Obx(
      () => InkWell(
        child: Container(
          width: 12,
          height: 12,
          color: curationStoreController.itemPageIndexIsIndex(index)
              ? louisColor
              : Color.fromRGBO(238, 238, 238, 1),
        ),
        onTap: () {
          curationStoreController.setItemPageIndex(index);
        },
      ),
    );
  }

  Widget _petfoodFrom() {
    return Stack(
      children: [
        _showItem(CurationStorePageName.PETFOOD.index),
        _sideItemList(),
      ],
    );
  }

  Widget _nutrientsForm() {
    return Stack(
      children: [
        _showItem(CurationStorePageName.NUTRIENTS.index),
        _sideItemList(),
      ],
    );
  }

  Widget _snackForm() {
    return Stack(
      children: [
        _showItem(CurationStorePageName.SNACK.index),
        _sideItemList(),
      ],
    );
  }

  Widget _petNameForm() {
    return Positioned(
      left: 0,
      top: 0,
      child: Text.rich(
        TextSpan(
          children: [
            TextSpan(
              text: '${curationController.curation['name']}를',
              style: TextStyle(
                fontSize: 42,
                fontWeight: FontWeight.bold,
              ),
            ),
            TextSpan(
              text: '위한 맞춤 스토어',
              style: TextStyle(
                fontSize: 42,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _selectProductTypeForm() {
    return Stack(
      children: [
        _textButton(text: '맞춤 사료', index: 0, left: 0),
        _textButton(text: '맞춤 영양제', index: 2, left: 100, width: 74),
        _textButton(text: '맞춤 간식', index: 4, left: 214),
      ],
    );
  }

  Widget _textButton({text, index, left, top = 111, width = 60}) {
    return Obx(
      () => Stack(
        children: [
          Positioned(
            left: left,
            top: top,
            child: InkWell(
              child: Container(
                width: width,
                height: 19,
                child: Text(
                  text,
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight:
                          curationStoreController.storePageIndexIsIndex(index)
                              ? FontWeight.bold
                              : FontWeight.w400,
                      color:
                          curationStoreController.storePageIndexIsIndex(index)
                              ? louisColor
                              : Colors.grey),
                ),
              ),
              onTap: () {
                curationStoreController.setStorePageIndex(index);
              },
            ),
          ),
          if (curationStoreController.storePageIndexIsIndex(index))
            Positioned(
              left: left,
              top: top + 32,
              child: Container(
                width: width + 3,
                height: 1,
                color: louisColor,
              ),
            ),
        ],
      ),
    );
  }

  Widget _showItem(int itemType) {
    return Stack(
      children: [
        Positioned(left: 0, top: 178, child: _recommendItemBox()),
        Positioned(left: 460, top: 178, child: _recommendItemBox()),
      ],
    );
  }

  Widget _recommendItemBox() {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _recommendImageContainer(),
          _recommendBottomText(),
        ],
      ),
    );
  }

  Widget _recommendImageContainer() {
    return Container(
      width: 440,
      height: 512,
      decoration: BoxDecoration(color: Color.fromRGBO(238, 238, 238, 1)),
      child: Container(
        child: Stack(
          children: [
            Positioned(left: 0, top: 0, child: _recommendTextContainer()),
            Positioned(
              left: 31,
              top: 39,
              child: Container(
                width: 378,
                height: 435,
                child: Image.asset(
                  'assets/images/petfood${curationStoreController.getPageNumber()}.png',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _recommendTextContainer() {
    return Container(
      width: 93,
      height: 34,
      color: louisColor,
      child: Center(
        child: Text(
          '루이스홈 추천',
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w400,
            color: Colors.white,
          ),
        ),
      ),
    );
  }

  Widget _recommendBottomText() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 44),
        Container(
          height: 19,
          child: Text(
            '강아지',
            style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: Color.fromRGBO(110, 110, 110, 1)),
          ),
        ),
        SizedBox(height: 7),
        Container(
          height: 21,
          child: Text(
            '유기농 강아지 간식',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
        SizedBox(height: 20),
        Row(
          children: [
            Container(
              height: 32,
              child: Text(
                '35,800원',
                style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(width: 16),
            Container(
              height: 22,
              child: Text(
                '55,800원',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                  decoration: TextDecoration.lineThrough,
                ),
              ),
            ),
            SizedBox(width: 202),
            _shoppingcartButton(radius: 34, size: 19),
          ],
        ),
      ],
    );
  }

  Widget _sideItemList() {
    return Stack(
      children: [
        for (var index = 0; index < 4; index++)
          Positioned(
              left: 920, top: 178 + index * 172, child: _sideItemContainer()),
      ],
    );
  }

  Widget _sideItemContainer() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _sideItemImage(),
        SizedBox(width: 30),
        _sideItemRight(),
      ],
    );
  }

  Widget _sideItemImage() {
    return Container(
      width: 152,
      height: 152,
      decoration: BoxDecoration(
        color: Color.fromRGBO(238, 238, 238, 1),
      ),
      child: Center(
        child: Image.asset(
          'assets/images/petfood${curationStoreController.storePageIndex}.png',
          width: 142,
          height: 142,
        ),
      ),
    );
  }

  Widget _sideItemRight() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 16),
        Container(
          height: 17,
          child: Text(
            '강아지',
            style: TextStyle(
                fontSize: 14, fontWeight: FontWeight.w400, color: Colors.grey),
          ),
        ),
        SizedBox(height: 8),
        Container(
          height: 19,
          child: Text(
            '유기농 강아지 건조 영양제',
            style: TextStyle(fontSize: 16),
          ),
        ),
        SizedBox(height: 13),
        Row(
          children: [
            Text(
              '35,800원',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
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
            )
          ],
        ),
        SizedBox(height: 22),
        _shoppingcartButton(radius: 28, size: 16)
      ],
    );
  }

  Widget _shoppingcartButton({radius, size}) {
    return Container(
      width: radius,
      height: radius,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        border: Border.all(
          color: Color.fromRGBO(221, 221, 221, 1),
        ),
      ),
      child: Image.asset(
        IconPath.shoppingcart,
        width: size,
        height: size,
      ),
    );
  }
}
