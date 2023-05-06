import 'package:flutter/material.dart';

import '../size_conflg.dart';

class titleText extends StatelessWidget {
  titleText({
     Key? key,
     required this.title,
  }) : super(key: key);

   String title = '';

  @override
  Widget build(BuildContext context) {
    double defaultSize = SizeConfig.defaultSize;
    return Text(
      title,
      style: TextStyle(
        fontSize: defaultSize * 1.6,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
