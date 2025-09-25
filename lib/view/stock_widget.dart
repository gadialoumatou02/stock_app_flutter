import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:stock_app/repository/stock_repository.dart';
import 'package:stock_app/repository/stock_repository_dummy_impl.dart';
import 'package:stock_app/repository/stock_repository_webservice.dart';
import 'package:stock_app/view/product_widget.dart';

import '../data/product.dart';

class StockWidget extends StatefulWidget {
  @override
  State<StockWidget> createState() => _StockWidgetState();
}

class _StockWidgetState extends State<StockWidget> {
  bool onlyMissingProducts = false;
  @override
  Widget build(BuildContext context)  {
    //final StockRepository stockRepository = StockRepositoryWebservice();
    final StockRepository stockRepository = GetIt.instance<StockRepository>();  //injection
    final products  = onlyMissingProducts
        ? stockRepository.products.where((product)=>product.quantity == 0).toList()
        : stockRepository.products;

    return Scaffold(
      appBar: AppBar(title: Text("Stock")),
      body: Column(
          children: [
            Row(children: [
              Checkbox(value: onlyMissingProducts,
                  onChanged: (bool? value) {
                    setState(() {
                      onlyMissingProducts = value!;
                    });
                  },),
              SizedBox(width: 16.0),
              Expanded(child: Text("Show only missing products"))
            ]),
            SizedBox(width: 16.0),
            Expanded(child: ListView.builder(
              itemCount: products.length,
              itemBuilder: (BuildContext context, int index) {
                return ProductWidget(
                  product: products[index],
                    shiftQuantity: (int shift){
                    setState(() {
                      products[index].quantity += shift;
                    });
                    }

                );  // on a créé une vue du widget
              })
            ),
          ],
      )
    );
  }
}