import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/providers_pack.dart';
import 'product_item.dart';

class  ProductGrid extends StatelessWidget {
  //const ProductOverview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final productsData = Provider.of<Products>(context, listen: false);
    final products = productsData.items;
    return GridView.builder(
      padding: const EdgeInsets.all(10.0),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 3 / 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
      ),
      itemCount: products.length,
      itemBuilder: ((context, index) => ChangeNotifierProvider.value(
            //Builder: (context) => products[index],
            value: products[index],
            child: ProductItem(
              products[index].id,
              products[index].title,
              products[index].imageUrl,
            ),
          )),
    );
  }
}
