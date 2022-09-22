import 'package:flutter/material.dart';
import '../widgets/products_grid.dart';

import '../models.dart/products.dart';
import '../widgets/product_item.dart';
import '../widgets/products_grid.dart';

class ProductOverview extends StatelessWidget {
  //const ProductOverview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MyShop'),
      ),
      body: ProductGrid(),
    );
  }
}
