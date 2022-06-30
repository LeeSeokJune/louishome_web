import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:louishome_web/components/constants.dart';
import 'package:louishome_web/components/imagesPath.dart';
import 'package:louishome_web/controller/product_controller.dart';
import 'package:louishome_web/screens/product/components/ComparisonSimilarProducts.dart';
import 'package:louishome_web/screens/product/components/about_product.dart';
import 'package:louishome_web/screens/product/components/exchange_refund_info_box.dart';
import 'package:louishome_web/screens/product/components/product_order_info.dart';
import 'package:louishome_web/screens/product/components/review.dart';

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
              children: [
                SizedBox(width: 39),
                ProductOrderInfo(),
              ],
            ),
          ),
          SizedBox(height: 100),
          _moveToProductDetail(index: 0),
          AboutProduct(),
          SizedBox(height: 100),
          ComparisonSimilarProducts(),
          SizedBox(height: 100),
          Review(),
          SizedBox(height: 122),
          ExchangeRefundInfoBox(),
        ],
      ),
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
          ),
        ],
      ),
    );
  }
}
