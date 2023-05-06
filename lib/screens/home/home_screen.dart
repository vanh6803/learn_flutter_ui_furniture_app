import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:funitureapp/constant.dart';
import 'package:funitureapp/screens/home/components/body.dart';

import '../../size_conflg.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // it help us to make our UI responsive
    SizeConfig().init(context);
    return Scaffold(
      appBar: buildAppBar(),
      body: SingleChildScrollView(child: Body()),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      leading: IconButton(
        icon: SvgPicture.asset(
          'assets/icons/menu.svg',
          height: SizeConfig.defaultSize * 2,
        ),
        onPressed: () {},
      ),
      actions: [
        IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              'assets/icons/scan.svg',
              height: SizeConfig.defaultSize * 2,
            )),
        const Center(
          child: Text(
            'Scan',
            style: TextStyle(color: kTextColor, fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(
          width: SizeConfig.defaultSize,
        )
      ],
    );
  }
}
