import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

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

    return Scaffold(
      appBar: AppBar(
        title: Text('title'),
      ),
    );
  }
}