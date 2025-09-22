import 'package:stock_app/data/product.dart';
import 'package:stock_app/repository/stock_repository.dart';

class StockRepositoryDummyImpl implements StockRepository {
  @override
  List<Product> products = [
    Product("Notebooks",0),
    Product("Erasers",7),
    Product("Pens",0),
    Product("Slates",9),
  ];
}