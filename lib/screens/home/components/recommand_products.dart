import 'package:flutter/material.dart';
import 'package:funitureapp/screens/detail/detail_screen.dart';
import 'package:funitureapp/screens/home/components/product_card.dart';

import '../../../models/product.dart';
import '../../../size_conflg.dart';

class RecommandProducts extends StatelessWidget {
  const RecommandProducts({
    super.key,
    required this.product,
  });

  final List<Product> product;

  @override
  Widget build(BuildContext context) {
    double defaultSize = SizeConfig.defaultSize;
    return Padding(
      padding: EdgeInsets.all(defaultSize * 2),
      child: GridView.builder(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemCount: product.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount:
              SizeConfig.orientation == Orientation.portrait ? 2 : 4,
          mainAxisSpacing: 20,
          crossAxisSpacing: 20,
          childAspectRatio: 0.693,
        ),
        itemBuilder: (context, index) => ProductCard(
          product: product[index],
          press: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailScreen(product: product[index]),
                ));
          },
        ),
      ),
    );
  }
}
