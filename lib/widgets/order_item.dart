import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:intl';

import '../providers/orders.dart' as ord;

class OrderItem extends StatelessWidget {
  //const OrderItem({super.key});
  final ord.OrderItem order;

  OrderItem({super.key, required this.order});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(10),
      child: Column(
        children: [
          ListTile(
            title: Text('\$${order.amount}'),
            subtitle: Text(),
          )
        ],
      ),
    );
  }
}
