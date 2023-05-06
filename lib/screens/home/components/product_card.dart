import 'package:flutter/material.dart';

import '../../../components/title_text.dart';
import '../../../constant.dart';
import '../../../models/product.dart';
import '../../../size_conflg.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    super.key,
    required this.product,
    required this.press,
  });

  final Product product;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    double defaultSize = SizeConfig.defaultSize;
    return GestureDetector(
      onTap: press,
      child: Container(
        width: defaultSize * 14.5,
        decoration: BoxDecoration(
          color: kSecondaryColor,
          borderRadius: BorderRadius.circular(30),
        ),
        child: AspectRatio(
          aspectRatio: 0.693,
          child: Column(children: [
            AspectRatio(
              aspectRatio: 1,
              child: Hero(
                tag: product.id,
                child: FadeInImage.assetNetwork(
                  placeholder: 'assets/spinner.gif',
                  image: product.image,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: defaultSize),
              child: titleText(title: product.title),
            ),
            SizedBox(
              height: defaultSize / 2,
            ),
            Text('\$${product.price}'),
            Spacer(),
          ]),
        ),
      ),
    );
  }
}
