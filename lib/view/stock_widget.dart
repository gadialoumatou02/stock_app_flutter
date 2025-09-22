import 'package:flutter/material.dart';
import 'package:stock_app/repository/stock_repository_dummy_impl.dart';

import '../data/product.dart';

class StockWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context)  {
    StockRepositoryDummyImpl stockRepository = StockRepositoryDummyImpl();
    List<Product> products  = stockRepository.products;

    return Scaffold(
      appBar: AppBar(
        title: Text("Stock")
      ),
      body: Padding(
          padding: EdgeInsets.all(16.0),
          child: ListView.builder(
                itemCount: products.length,
                itemBuilder: (BuildContext context, int index) {
                    return Text(products[index] as String);
                }),

          )
    );
  }
}