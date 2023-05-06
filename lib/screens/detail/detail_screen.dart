import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:funitureapp/constant.dart';
import 'package:funitureapp/models/product.dart';
import 'package:funitureapp/screens/detail/component/body.dart';
import 'package:funitureapp/size_conflg.dart';

class DetailScreen extends StatelessWidget {
  final Product product;

  const DetailScreen({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: kSecondaryColor,
      appBar: buildAppbar(context),
      body: SafeArea(
          child: Body(
        product: product,
      )),
    );
  }

  AppBar buildAppbar(BuildContext context) {
    return AppBar(
      leading: IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: SvgPicture.asset('assets/icons/arrow-long-left.svg'),
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: SvgPicture.asset('assets/icons/bag.svg'),
        ),
        SizedBox(
          width: SizeConfig.defaultSize,
        )
      ],
    );
  }
}
