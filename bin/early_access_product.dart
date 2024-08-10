import 'product.dart';

class EarlyAccessProduct extends Product{
  EarlyAccessProduct(String name, int price, int quantity) : super(name, price, quantity, ProductType());

  EarlyAccessProduct.fromJson(Map<String, dynamic> json) : super.fromJson(json);

}
