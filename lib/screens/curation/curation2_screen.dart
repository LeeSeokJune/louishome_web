import 'package:flutter/material.dart';
import 'package:louishome_web/components/constants.dart';
import 'package:louishome_web/screens/curation/components/curationBox.dart';

class Curation2Screen extends StatelessWidget {
  const Curation2Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          SizedBox(height: 70),
          CurationBox(
            height: 893,
            pageIndex: CurationPageName.SecondPage.index,
            children: [],
          ),
        ],
      ),
    );
  }
}
