import 'package:flutter/material.dart';
import 'package:funitureapp/constant.dart';
import 'package:funitureapp/models/categories.dart';
import 'package:funitureapp/models/product.dart';
import 'package:funitureapp/screens/home/components/product_card.dart';
import 'package:funitureapp/screens/home/components/recommand_products.dart';
import 'package:funitureapp/services/fetch_categories.dart';
import 'package:funitureapp/services/fetch_product.dart';
import 'package:funitureapp/size_conflg.dart';

import '../../../components/title_text.dart';
import 'categories.dart';
import 'category_card.dart';

class Body extends StatelessWidget {
  const Body({super.key});
  @override
  Widget build(BuildContext context) {
    double defaultSize = SizeConfig.defaultSize;
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.all(defaultSize * 2),
            child: titleText(title: 'Browser by Categories'),
          ),
          FutureBuilder(
            future: fetchCategories(),
            builder: (context, snapshot) => snapshot.hasData
                ? Categories(
                    categories: snapshot.data!,
                  )
                : Center(child: Image.asset('assets/ripple.gif')),
          ),
          Divider(
            height: 5,
          ),
          Padding(
            padding: EdgeInsets.all(defaultSize * 2),
            child: titleText(title: 'Recommends For You'),
          ),
          FutureBuilder(
            future: fetchProducts(),
            builder: (context, snapshot) => snapshot.hasData
                ? RecommandProducts(
                    product: snapshot.data!,
                  )
                : Center(child: Image.asset('assets/ripple.gif')),
          ),
        ],
      ),
    );
  }
}
