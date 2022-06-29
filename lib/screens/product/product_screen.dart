import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:louishome_web/components/constants.dart';
import 'package:louishome_web/components/imagesPath.dart';
import 'package:louishome_web/controller/product_controller.dart';
import 'package:louishome_web/screens/product/components/product_order_info.dart';

class ProductScreen extends StatelessWidget {
  ProductScreen({Key? key}) : super(key: key);
  var productController = Get.put(ProductController());
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          SizedBox(height: 60),
          Container(
            width: centerWidth,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(width: 39),
                ProductOrderInfo(),
              ],
            ),
          ),
          SizedBox(height: 100),
          _moveToProductDetail(index: 0),
          _productInfoDetail(),
        ],
      ),
    );
  }

  Container _productInfoDetail() {
    return Container(
      width: centerWidth,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '상품정보',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 20),
          Container(width: centerWidth, height: 1, color: Colors.black),
          _nutientsInfo(),
        ],
      ),
    );
  }

  Padding _nutientsInfo() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 40),
          Image.asset(IconPath.petfood_outlined, width: 64, height: 64),
          SizedBox(height: 42),
          Container(
            width: 1240,
            height: 1,
            color: Color.fromRGBO(238, 238, 238, 1),
          ),
          SizedBox(height: 22),
          Row(
            children: [
              _nutrientsTextInfo(
                mainText: '피부, 피모 건강 개선',
                subText: 'EPA + DHA가 풍부한 자연산 청어가 선물하는 깨끗한 피부와 윤기나는 털',
              ),
              SizedBox(width: 186),
              _nutrientsTextInfo(
                mainText: '편안한 소화와 노화방지',
                subText: '풍부한 비타민과 무기질은 강아지의 소화를 돕고 노화를 방지해요',
              ),
              SizedBox(width: 186),
              _nutrientsTextInfo(
                mainText: '피부, 피모 건강 개선',
                subText: "알러지 확률이 낮은 '단일단백질'사료로 알러지의 위험을 낮췄어요",
              ),
            ],
          ),
          SizedBox(height: 60),
          Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(IconPath.nutrient),
                  SizedBox(height: 40),
                  InkWell(
                    child: Container(
                      width: 580,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            '영양성분',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          Icon(
                            productController.isNutrientsShow.value
                                ? Icons.add
                                : Icons.remove,
                            size: 12,
                          ),
                        ],
                      ),
                    ),
                    onTap: () {
                      productController.setIsNutrientsShow();
                    },
                  ),
                  SizedBox(height: 18),
                  Container(
                    width: 580,
                    height: 1,
                    color: Color.fromRGBO(240, 240, 240, 1),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }

  Column _nutrientsTextInfo({mainText, subText}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          mainText,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: louisColor,
          ),
        ),
        Container(
          width: 247,
          child: Text(subText),
        ),
      ],
    );
  }

  Container _moveToProductDetail({index}) {
    return Container(
      width: centerWidth,
      height: 568,
      child: Stack(
        children: [
          Positioned(
            left: 224,
            top: 0,
            child: Text(
              '제품에 대하여',
              style: TextStyle(
                fontSize: 21,
                fontWeight: index == 0 ? FontWeight.bold : FontWeight.w500,
                color: index == 0 ? louisColor : Colors.grey,
              ),
            ),
          ),
          Positioned(
            left: 589,
            top: 0,
            child: Text(
              '브랜드에 대하여',
              style: TextStyle(
                fontSize: 21,
                fontWeight: index == 1 ? FontWeight.bold : FontWeight.w500,
                color: index == 1 ? louisColor : Colors.grey,
              ),
            ),
          ),
          Positioned(
            left: 972,
            top: 0,
            child: Text(
              '구매평&리뷰',
              style: TextStyle(
                fontSize: 21,
                fontWeight: index == 2 ? FontWeight.bold : FontWeight.w500,
                color: index == 2 ? louisColor : Colors.grey,
              ),
            ),
          ),
          Positioned(
            left: 0,
            top: 49,
            child: Container(
              width: centerWidth,
              height: 1,
              color: Color.fromRGBO(238, 238, 238, 1),
            ),
          ),
          if (index == 0)
            Positioned(
              left: 220,
              top: 49,
              child: Container(width: 120, height: 2, color: louisColor),
            ),
          if (index == 1)
            Positioned(
              left: 585,
              top: 49,
              child: Container(width: 137, height: 2, color: louisColor),
            ),
          if (index == 2)
            Positioned(
              left: 968,
              top: 49,
              child: Container(width: 110, height: 2, color: louisColor),
            ),
          Positioned(
            left: 327,
            top: 90,
            child: Container(
              width: 646,
              height: 432,
              child: Image.asset(ImagesPath.bowl_petfood),
            ),
          )
        ],
      ),
    );
  }
}
