import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:louishome_web/components/constants.dart';
import 'package:louishome_web/components/snackContainer.dart';

class HealthPlanningExhibitionScreen extends StatelessWidget {
  const HealthPlanningExhibitionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: centerWidth,
        child: Column(
          children: [
            SizedBox(height: 60),
            Text(
              '건강기획전',
              style: TextStyle(fontSize: 38, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 80),
            _forSickPet(),
            SizedBox(height: 40),
            Container(
              width: centerWidth,
              height: 1,
              color: Color.fromRGBO(240, 240, 240, 1),
            ),
            SizedBox(height: 80),
            _forOldPet(),
            SizedBox(height: 40),
            Container(
              width: centerWidth,
              height: 1,
              color: Color.fromRGBO(240, 240, 240, 1),
            ),
            SizedBox(height: 80),
            SnackContainer(),
          ],
        ),
      ),
    );
  }

  Row _forOldPet() {
    return Row(
      children: [
        _leftCategoryText(
          subText: '사료부터 용품까지',
          mainText: '노령기\n반려동물을 위한',
          height: 336,
        ),
        SizedBox(width: 89),
        Container(
          child: Wrap(
            spacing: 30,
            runSpacing: 30,
            children: [
              _imageTextContainer(
                index: 10,
                mainText: '신장 케어',
                subText: '신장 건강을 위해 단백질과 인 등이\n제한된 제품들만 모았어요',
              ),
              _imageTextContainer(
                index: 11,
                mainText: '췌장 케어',
                subText: '췌장염을 앓았던 아이들이 먹기에\n부담스럽지 않은 저지방, 저단백 식품',
              ),
              _imageTextContainer(
                index: 12,
                mainText: '관절 케어',
                subText: '슬개골 탈구 및 관절이 약한 친구들을\n위한 관절 강화에 도움이 되는 제품',
              ),
            ],
          ),
        ),
      ],
    );
  }

  Row _forSickPet() {
    return Row(
      children: [
        _leftCategoryText(
            subText: '아무거나 먹지 못하는', mainText: '몸이 아픈\n반려동물을 위한', height: 702),
        SizedBox(width: 89),
        Container(
          width: 870,
          child: Wrap(
            spacing: 30,
            runSpacing: 30,
            children: [
              _imageTextContainer(
                index: 0,
                mainText: '신장 케어',
                subText: '신장 건강을 위해 단백질과 인 등이\n제한된 제품들만 모았어요',
              ),
              _imageTextContainer(
                index: 1,
                mainText: '췌장 케어',
                subText: '췌장염을 앓았던 아이들이 먹기에\n부담스럽지 않은 저지방, 저단백 식품',
              ),
              _imageTextContainer(
                index: 2,
                mainText: '관절 케어',
                subText: '슬개골 탈구 및 관절이 약한 친구들을\n위한 관절 강화에 도움이 되는 제품',
              ),
              _imageTextContainer(
                index: 3,
                mainText: '다이어트/체중관리',
                subText: '반려동물 건강에 가장 밀접한 체중,\n사료부터 간식까지 저칼로리 위주로\n만나보세요',
              ),
              _imageTextContainer(
                index: 4,
                mainText: '수술 후 회복',
                subText:
                    '수술 이후 빠른 회복을 위해 면역력\n 개선, 항산화 기능 향상에 도움이 되는\n제품들을 만나보세요',
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _leftCategoryText({subText, mainText, height}) {
    return Container(
      height: height,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '${subText}',
                style: TextStyle(fontSize: 26, color: Colors.grey),
              ),
              SizedBox(height: 30),
              Text(
                '${mainText}',
                style: TextStyle(fontSize: 53, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          _showMoreItems()
        ],
      ),
    );
  }

  Widget _imageTextContainer({index, mainText, subText}) {
    return Container(
      width: 270,
      height: 336,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Color.fromRGBO(240, 240, 240, 1)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            child: CachedNetworkImage(
              imageUrl: 'https://picsum.photos/id/${index}/270/200',
            ),
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15), topRight: Radius.circular(15)),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 13, left: 20),
            child: Text(
              '$mainText',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 13.0, horizontal: 20),
            child: Text(
              '$subText',
              style: TextStyle(color: Colors.grey),
            ),
          ),
        ],
      ),
    );
  }

  Row _showMoreItems() {
    return Row(
      children: [
        Text(
          '전체상품 보기',
          style: TextStyle(fontSize: 18, color: Colors.grey),
        ),
        Icon(
          Icons.keyboard_arrow_right,
          size: 24,
          color: Colors.grey,
        ),
      ],
    );
  }
}
