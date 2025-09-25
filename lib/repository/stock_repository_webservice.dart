import 'package:stock_app/repository/stock_repository.dart';

import '../data/product.dart';

class StockRepositoryWebservice extends StockRepository {
  late List<Product> products;
  StockRepositoryWebservice() {
    this.products = []; // myWebservice.get(...)
  }
}