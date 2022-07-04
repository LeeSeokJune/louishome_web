import 'package:flutter/material.dart';
import 'package:louishome_web/components/constants.dart';
import 'package:louishome_web/components/verticalProductForm.dart';
import 'package:louishome_web/screens/filtering/components/category_detail.dart';

import '../../components/imagesPath.dart';

class FilteringScreen extends StatelessWidget {
  const FilteringScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: centerWidth,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 60),
            Padding(
              padding: const EdgeInsets.all(14.0),
              child: Text(
                '강아지/사료/건사료',
                style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(width: 14),
                CategoryDetail(),
                SizedBox(width: 60),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 1035,
                      height: 203,
                      color: Color.fromRGBO(240, 240, 240, 1),
                      child: Stack(
                        children: [
                          Positioned(
                            left: 60,
                            top: 40,
                            child: Text(
                              '사료계의 명품 빅스비\n그레인프리 사료 신상품 입고',
                              style: TextStyle(
                                fontSize: 28,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          Positioned(
                            left: 60,
                            top: 148,
                            child: Text(
                              '입고 기념 특별할인 + 추가 10% 쿠폰',
                              style: TextStyle(fontSize: 16),
                            ),
                          ),
                          Positioned(
                            left: 650,
                            top: 20,
                            child: Image.asset(
                              ImagesPath.petfood_group,
                              width: 336,
                              height: 174,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 30),
                    Container(
                      width: 1034,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          _categoryImageText(index: 0, text: '퍼피'),
                          _categoryImageText(index: 1, text: '어덜트'),
                          _categoryImageText(index: 2, text: '시니어'),
                          _categoryImageText(index: 3, text: '다이어트'),
                          _categoryImageText(index: 4, text: '그레인프리'),
                          _categoryImageText(index: 5, text: '단일단백질'),
                          _categoryImageText(index: 1, text: '곤충사료'),
                        ],
                      ),
                    ),
                    SizedBox(height: 42),
                    Container(
                      width: 1034,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('전체 35', style: TextStyle(fontSize: 20)),
                          Row(
                            children: [
                              Text('상품정렬', style: TextStyle(fontSize: 16)),
                              SizedBox(width: 16),
                              Icon(
                                Icons.keyboard_arrow_down,
                                size: 24,
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 15),
                    Container(width: 1034, height: 1, color: Colors.grey),
                    SizedBox(height: 20),
                    Column(
                      children: [
                        _itemsRow(index: 0),
                        SizedBox(height: 63),
                        _itemsRow(index: 1),
                        SizedBox(height: 63),
                        _itemsRow(index: 2),
                        SizedBox(height: 63),
                        _itemsRow(index: 3),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 60),
            Row(
              children: [
                SizedBox(width: 581),
                Container(
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
                            borderRadius: BorderRadius.circular(50),
                            color: louisColor),
                        child: Center(
                          child:
                              Text('1', style: TextStyle(color: Colors.white)),
                        ),
                      ),
                      Container(
                        width: 32,
                        height: 32,
                        child: Center(
                          child:
                              Text('2', style: TextStyle(color: Colors.grey)),
                        ),
                      ),
                      Container(
                        width: 32,
                        height: 32,
                        child: Center(
                          child:
                              Text('3', style: TextStyle(color: Colors.grey)),
                        ),
                      ),
                      Container(
                        width: 32,
                        height: 32,
                        child: Center(
                          child:
                              Text('4', style: TextStyle(color: Colors.grey)),
                        ),
                      ),
                      Container(
                        width: 32,
                        height: 32,
                        child: Center(
                          child:
                              Text('5', style: TextStyle(color: Colors.grey)),
                        ),
                      ),
                      Container(
                        width: 32,
                        height: 32,
                        child: Center(
                          child:
                              Text('6', style: TextStyle(color: Colors.grey)),
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
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Row _itemsRow({index}) {
    return Row(
      children: [
        Container(
          child: VerticalProductForm(
              index: index,
              width: 326,
              height: 326,
              imageSize: 309,
              shoppingCartButtonRadius: 34,
              fontSize: 14),
        ),
        SizedBox(width: 30),
        Container(
          child: VerticalProductForm(
              index: index + 1,
              width: 326,
              height: 326,
              imageSize: 309,
              shoppingCartButtonRadius: 34,
              fontSize: 14),
        ),
        SizedBox(width: 30),
        Container(
          child: VerticalProductForm(
              index: index + 2,
              width: 326,
              height: 326,
              imageSize: 309,
              shoppingCartButtonRadius: 34,
              fontSize: 14),
        ),
      ],
    );
  }

  Widget _categoryImageText({index, text}) {
    return Column(
      children: [
        Image.asset(
          'assets/images/petfood${index}.png',
          width: 80,
          height: 101,
        ),
        Text('${text}'),
      ],
    );
  }
}
