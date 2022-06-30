import 'package:flutter/material.dart';

import '../../../components/constants.dart';

class ExchangeRefundInfoBox extends StatelessWidget {
  const ExchangeRefundInfoBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: centerWidth,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '교환/반품',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 20),
          Container(
            width: centerWidth,
            height: 1,
            color: Colors.black,
          ),
          Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _tableLeftContainer(text: '반품/교환 택배사', height: 62),
                  _tableLeftContainer(text: '반품 배송비(편도)', height: 62),
                  _tableLeftContainer(text: '교환 배송비(왕복)', height: 62),
                  _tableLeftContainer(text: '반품/교환 주소지', height: 62),
                  _tableLeftContainer(text: '반품/교환 신청 기준일', height: 83),
                  _tableLeftContainer(text: '반품/교환 불가능 사유', height: 167),
                ],
              ),
              Column(
                children: [
                  _tableRightContainer(text: '반품/교환 신청페이지 참고'),
                  _tableRightContainer(text: '2,500원'),
                  _tableRightContainer(text: '5,000원'),
                  _tableRightContainer(
                      text: '서울 마포구 백범로 16안길 9 (대흥동) 루이스홈 (1.5층) (04149)'),
                  _tableRightContainer(
                      text:
                          '상품 수령 후 14일 이내 \n(단, 제품이 표시광고 내용과 다르거나 불량 등 계약과 다르게 이행된 경우는 제품 수령일로부터 3개월이내나 그 사실을 안 날 또는 알 수 있었던 날부터 30일 이내 교호나/반품이 가능)',
                      height: 83),
                  _tableRightContainer(
                      text:
                          '1. 소비자의 잘못으로 물건이 멸실되거나 훼손된 경우(단, 내용물을 확인하기 위해 포장을 훼손한 경우는 제외)\n2. 소비자가 사용해서 물건의 가치가 뚜렷하게 떨어진 경우\n3.시간이 지나 다시 판매하기 곤란할 정도로 물건의 가치가 뚜렷하게 떨어진 경우\n4. 복제가 가능한 물건의 포장을 훼손한 경우 (CD, DVD, GAME, 도서 등)\n5. 용역 또는 문화산업진흥 기본법 제2조 제5호의 디지털콘텐츠의 제공이 게시된 경우 (단, 가분적 용역 또는 가분적 디지털콘텐츠로 구성된 계약의 경우 제공이 게시되지 않은 부분은 제외)\n6. 소비자의 주문에 따라 개별적으로 생산되는 상품이 제작에 들어간 경우',
                      height: 167),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }

  Container _tableRightContainer({text, height = 62}) {
    return Container(
      width: centerWidth - 209,
      height: height,
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: Color.fromRGBO(235, 235, 235, 1),
          ),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(20, 20, 0, 0),
        child: Text(
          text,
          style: TextStyle(height: 1.5),
        ),
      ),
    );
  }

  Container _tableLeftContainer({text, height}) {
    return Container(
      width: 209,
      height: height,
      decoration: BoxDecoration(
          color: Color.fromRGBO(240, 240, 240, 1),
          border: Border(
              bottom: BorderSide(color: Color.fromRGBO(235, 235, 235, 1)))),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Text(
          '${text}',
          style: TextStyle(color: Colors.grey),
        ),
      ),
    );
  }
}
