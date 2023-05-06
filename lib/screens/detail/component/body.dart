import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:funitureapp/constant.dart';
import 'package:funitureapp/models/product.dart';
import 'package:funitureapp/screens/detail/component/product_description.dart';
import 'package:funitureapp/screens/detail/component/product_info.dart';

import '../../../size_conflg.dart';

class Body extends StatelessWidget {
  final Product product;

  const Body({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    double defaultSize = SizeConfig.defaultSize;
    return SingleChildScrollView(
      child: SizedBox(
        width: double.infinity,
        height: SizeConfig.orientation == Orientation.landscape
            ? SizeConfig.screenWidth - AppBar().preferredSize.height
            : SizeConfig.screenHeight - AppBar().preferredSize.height,
        child: Stack(
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ProductInfo(
              product: product,
            ),
            Positioned(
              top: defaultSize * 37.5,
              right: 0,
              left: 0,
              child: ProductDescription(
                product: product,
                press: () {},
              ),
            ),
            Positioned(
                top: defaultSize * 9.5,
                right: -defaultSize * 6.5,
                child: Hero(
                  tag: product.id,
                  child: Image.network(
                    product.image,
                    height: defaultSize * 37.8,
                    width: defaultSize * 36.4,
                    fit: BoxFit.cover,
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
