import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class ProductItem extends StatelessWidget {
  //const ProductItem({Key? key}) : super(key: key);

  final String id;
  final String title;
  final String imageUrl;

  ProductItem(this.id, this.imageUrl, this.title);

  @override
  Widget build(BuildContext context) {
    return GridTile(
      child: Image.network(),
    );
  }
}
