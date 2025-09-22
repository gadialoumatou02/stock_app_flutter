import 'package:stock_app/data/product.dart';

abstract class StockRepository {
  abstract List<Product> products;
}