import 'package:flutter/material.dart';
import 'package:louishome_web/components/constants.dart';
import 'package:louishome_web/components/imagesPath.dart';

class DiscountBelt extends StatelessWidget {
  const DiscountBelt({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: basicWidth,
      height: 395,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          _sideContainer(
            mainText: '강아지 시즌 옷',
            discoutText: 'SALE OFF 50%',
            imagePath: ImagesPath.discount_dog,
            color: Color.fromRGBO(234, 233, 238, 1),
          ),
          _centerContainer(),
          _sideContainer(
            mainText: '강아지 시즌 옷',
            discoutText: 'SALE OFF 50%',
            imagePath: ImagesPath.discount_dog,
            color: Color.fromRGBO(240, 240, 240, 1),
          ),
        ],
      ),
    );
  }

  Container _centerContainer() {
    return Container(
      width: 638,
      height: 395,
      color: Color.fromRGBO(211, 211, 223, 1),
      child: Stack(
        children: [
          Positioned(
            left: 59,
            top: 74,
            child: Image.asset(
              ImagesPath.discount_furniture,
            ),
          ),
          Positioned(
            left: 173,
            top: 50,
            child: Text(
              'TOP BRANDING 2022',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Positioned(
            left: 278,
            top: 95,
            child: Text(
              '펫 가구 할인전',
              style: TextStyle(
                color: Color.fromRGBO(85, 85, 85, 1),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Container _sideContainer({mainText, discoutText, imagePath, color}) {
    return Container(
      width: 641,
      height: 395,
      color: color,
      child: Stack(
        children: [
          Positioned(left: 60, top: 168, child: Text(mainText)),
          Positioned(
            left: 60,
            top: 185,
            child: Text(
              discoutText,
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Positioned(
            left: 310,
            top: 15,
            child: Container(
              width: 332,
              height: 381,
              child: Image.asset(imagePath),
            ),
          ),
        ],
      ),
    );
  }
}
