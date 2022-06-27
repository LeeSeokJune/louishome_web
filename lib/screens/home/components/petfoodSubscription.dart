import 'package:flutter/material.dart';
import '../../../components/constants.dart';
import '../../../components/imagesPath.dart';

class PetfoodSubScription extends StatelessWidget {
  const PetfoodSubScription({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _upperContainer(),
        _bottomContainer(),
      ],
    );
  }

  Container _upperContainer() {
    return Container(
      width: basicWidth,
      height: 538,
      decoration: BoxDecoration(
        color: Color.fromRGBO(240, 240, 240, 1),
      ),
      child: Center(
        child: Container(
          width: centerWidth,
          height: 538,
          child: Stack(
            children: [
              Positioned(
                left: 0,
                top: 168,
                child: Container(
                  width: 352,
                  height: 99,
                  child: Text(
                    '사료 정기구독 신청하고    다양한 혜택을 받아보세요',
                    style: TextStyle(
                      fontSize: 36,
                      fontWeight: FontWeight.bold,
                      letterSpacing: -2.5,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 0,
                top: 315,
                child: Container(
                  width: 240,
                  height: 60,
                  decoration: BoxDecoration(color: louisColor),
                  child: Center(
                    child: Text(
                      '정기구독 신청하기',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 668,
                top: 32,
                child: Container(
                  width: 632,
                  height: 459,
                  child: Image.asset(ImagesPath.petfood_group),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _bottomContainer() {
    return Container(
      width: basicWidth,
      height: 354,
      decoration: BoxDecoration(
        color: Color.fromRGBO(245, 245, 245, 1),
      ),
      child: Stack(
        children: [
          Positioned(
            left: 97,
            top: 94,
            child: _iconText(
              iconPath: IconPath.piggy_bank,
              mainText: '전 제품 5% 적립',
              subText1: '사료 정기 구독 고객, 구매하신 전 제품',
              subText2: '5%를 적립해 드립니다.',
            ),
          ),
          Positioned(
            left: 533,
            top: 94,
            child: _iconText(
              iconPath: IconPath.piggy_bank,
              mainText: '정기배송 상품 배송비 무료',
              subText1: '정기 배송 삼품은 무료로 배송해 드립니다.',
              subText2: '배송비 걱정말고 받아보세요!',
            ),
          ),
          Positioned(
            left: 968,
            top: 94,
            child: _iconText(
              iconPath: IconPath.piggy_bank,
              mainText: '수수료 없이 사료 교체 및 구독 취소',
              subText1: '언제든 마음 편하게 사료 교체 및',
              subText2: '구독 취소를 도와드립니다.',
            ),
          ),
        ],
      ),
    );
  }

  Widget _iconText({iconPath, mainText, subText1, subText2}) {
    return Container(
      width: 248,
      height: 167,
      child: Column(
        children: [
          Image.asset(
            iconPath,
            width: 60,
            height: 60,
          ),
          SizedBox(height: 20),
          Text(
            mainText,
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 21),
          Text(
            subText1,
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: Colors.grey,
            ),
          ),
          SizedBox(height: 5),
          Text(
            subText2,
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}
