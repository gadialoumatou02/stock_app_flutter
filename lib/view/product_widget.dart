import 'package:flutter/material.dart';

import '../data/product.dart';

class ProductWidget extends StatelessWidget {
  final Product product;
  final void Function(int shift) shiftQuantity;
  const ProductWidget({required this.product,required this.shiftQuantity, super.key}); // constructeur avec l'ajout de la clé qui permet de distinguer des widgets de même type

  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.all(16),
      child:Row(
        children: [
          Expanded(child: Text(product.name)),
          SizedBox(width: 16.0),
          Text("${product.quantity}"),
          SizedBox(width: 16.0),
          ElevatedButton(onPressed: (){
            product.quantity += -1;
          }, child: Text("-")),
          SizedBox(width: 16.0),
          ElevatedButton(
            onPressed: (){
              product.quantity += 1;
            },
            child: Text("+")
          )
        ]
      )
    );
  }
}