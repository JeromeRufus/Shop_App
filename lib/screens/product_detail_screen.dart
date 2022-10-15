import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:shop_app/providers/products.dart';
import '../providers/products.dart';
import 'package:provider/provider.dart';

import '../providers/providers_pack.dart';

class ProductDetailScreen extends StatelessWidget {
  // const ProductDetailScreen({Key? key}) : super(key: key);
  // final String title;
  // final double price;
  // ProductDetailScreen(this.title, this.price);

  static const routeName = './product-detail';
  @override
  Widget build(BuildContext context) {
    final productId =
        ModalRoute.of(context)!.settings.arguments as String; //is the id
    final loadedProduct =
        Provider.of<Products>(context, listen: false).findById(productId);
    // Provider.of<Products>(context)
    //     .items
    //     .firstWhere((prod) => prod.id == productId);
    return Scaffold(
      appBar: AppBar(
        title: Text(loadedProduct.title),
      ),
    );
  }
}
