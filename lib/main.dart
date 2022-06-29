import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:louishome_web/screens/basicFrame.dart';

import 'components/initialBindings.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(
        fontFamily: 'Suit',
      ),
      initialBinding: InitialBindings(),
      home: BasicFrame(),
    );
  }
}
