import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../components/constants.dart';
import '../../../components/imagesPath.dart';
import '../../../controller/product_controller.dart';

class AboutProduct extends StatelessWidget {
  AboutProduct({Key? key}) : super(key: key);
  var productController = Get.put(ProductController());
  @override
  Widget build(BuildContext context) {
    return Container(
      width: centerWidth,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('상품정보',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          SizedBox(height: 20),
          Container(width: centerWidth, height: 1, color: Colors.black),
          _productSubInfo(),
        ],
      ),
    );
  }

  Widget _productSubInfo() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 40),
          _petfoodCharacteristics(),
          SizedBox(height: 60),
          Obx(
            () => Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _nutritionalIngredientsInfo(),
                SizedBox(width: 80),
                _amountPetfoodInfo(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Column _amountPetfoodInfo() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(IconPath.petfood),
        SizedBox(height: 40),
        InkWell(
          child: Container(
            width: 580,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '급여량',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Icon(
                  productController.isAmountShow.value
                      ? Icons.remove
                      : Icons.add,
                  size: 12,
                ),
              ],
            ),
          ),
          onTap: () {
            productController.setIsAmountShow();
          },
        ),
        SizedBox(height: 18),
        Container(
          width: 580,
          height: 1,
          color: Color.fromRGBO(240, 240, 240, 1),
        ),
        SizedBox(height: 20),
        if (productController.isAmountShow.value) _showAmountDetail(),
      ],
    );
  }

  Column _showAmountDetail() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _amountDetailText(
            mainText: '1.5~2.5', subText: '70~100g 급여 (종이컵 0.5~1컵)'),
        SizedBox(height: 22),
        _amountDetailText(
            mainText: '2.5~4.5', subText: '100~150g 급여 (종이컵 1~1.5컵)'),
        SizedBox(height: 22),
        _amountDetailText(
            mainText: '4.5~10', subText: '150~250g 급여 (종이컵 1.5~2.5컵)'),
        SizedBox(height: 22),
        _amountDetailText(
            mainText: '10~20', subText: '250~350g 급여 (종이컵 2.5~3컵)'),
      ],
    );
  }

  Column _nutritionalIngredientsInfo() {
    return Column(
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
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Icon(
                  productController.isNutrientsShow.value
                      ? Icons.remove
                      : Icons.add,
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
        SizedBox(height: 20),
        if (productController.isNutrientsShow.value) _showNutrientsDetail(),
      ],
    );
  }

  Widget _petfoodCharacteristics() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(IconPath.petfood_outlined, width: 64, height: 64),
        SizedBox(height: 42),
        Text(
          '사료 특징',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 20),
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
      ],
    );
  }

  Widget _amountDetailText({mainText, subText}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '몸무게 ' + mainText + 'kg',
          style: TextStyle(
              fontSize: 16, fontWeight: FontWeight.bold, color: louisColor),
        ),
        SizedBox(height: 10),
        Text(
          '하루에' + subText,
        ),
      ],
    );
  }

  Widget _showNutrientsDetail() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '원재료',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: louisColor,
          ),
        ),
        SizedBox(height: 16),
        Container(
          width: 558,
          height: 101,
          child: Text(
              '뼈 없는 닭고기, 닭고기 가루, 현미, 보리, 오트밀, 완두콩 전분, 아마씨(오메가 3 및 6 지방산 공급원), 닭고기 지방(혼합 토코페롤로 보존), 천연 향료, 말린 토마토 포마스, 완두콩, 완두콩 단백질, 소금 , 염화칼륨, 직접 탈수 알팔파 펠렛, 말린 치커리 뿌리, 감자, 완두콩 섬유, 알팔파 영양 농축액, 탄산칼슘, 염화콜린, DL-메티오닌, 혼합 토코페롤로 보존, 인산이칼슘, 고구마, 당근, 아미노산 킬레이트, 황산아연, 색소용 야채 주스, 황산제일철, 비타민 E 보충제, 아미노산 킬레이트 철, 블루베리, 크랜베리, 보리 잔디, 파슬리, 강황 등'),
        ),
        SizedBox(height: 22),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              '영양정보,',
              style: TextStyle(
                  fontSize: 16, fontWeight: FontWeight.bold, color: louisColor),
            ),
            Text(
              '칼로리(361.8kcal/100g',
            )
          ],
        ),
        SizedBox(height: 9),
        Container(
            width: 580, height: 1, color: Color.fromRGBO(240, 240, 240, 1)),
        SizedBox(height: 16),
        Container(
          width: 580,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: 120,
                child: Center(child: Text('성분')),
              ),
              _nutrientsDetailInfoText(text: '조단백질'),
              _nutrientsDetailInfoText(text: '조지방'),
              _nutrientsDetailInfoText(text: '칼슘'),
              _nutrientsDetailInfoText(text: '인'),
              _nutrientsDetailInfoText(text: '오메가6'),
            ],
          ),
        ),
        SizedBox(height: 16),
        Container(
            width: 580, height: 1, color: Color.fromRGBO(240, 240, 240, 1)),
        SizedBox(height: 16),
        Container(
          width: 580,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: 120,
                child: Center(child: Text('영양성분기준치(%)')),
              ),
              _nutrientsDetailInfoText(text: '28%'),
              _nutrientsDetailInfoText(text: '14%'),
              _nutrientsDetailInfoText(text: '1%'),
              _nutrientsDetailInfoText(text: '0.7%'),
              _nutrientsDetailInfoText(text: '3%'),
            ],
          ),
        ),
        SizedBox(height: 16),
        Container(
            width: 580, height: 1, color: Color.fromRGBO(240, 240, 240, 1)),
      ],
    );
  }

  Container _nutrientsDetailInfoText({text}) {
    return Container(
      width: 50,
      child: Center(child: Text(text)),
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
}
