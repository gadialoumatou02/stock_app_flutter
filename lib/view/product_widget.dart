import 'package:flutter/material.dart';

import '../data/product.dart';

class ProductWidget extends StatelessWidget {
  Product product;
  ProductWidget(this.product); // constructeur

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: Text(product.name)),
        SizedBox(width: 16.0),
        Text("${product.quantity}"),
      ]
        );
  }
}