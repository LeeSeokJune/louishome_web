import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:louishome_web/components/constants.dart';

class CurationScreen extends StatelessWidget {
  const CurationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        children: [
          Positioned(
            left: 0,
            top: 60,
            child: Container(
              width: basicWidth,
              height: 688,
              decoration: BoxDecoration(
                color: Color.fromRGBO(250, 249, 249, 1),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
