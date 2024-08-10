import 'early_access_product.dart';

void main(){
  EarlyAccessProduct salchipapa = EarlyAccessProduct('salchipapa', 2000, 5);
  print(salchipapa);

  final Map<String, dynamic> salchipapaJson = {
    'name': 'salchipapa json',
    'price': 1000,
    'quantity': 1
  };

  final salchipapaFromJson = EarlyAccessProduct.fromJson(salchipapaJson);


  print(salchipapaFromJson);

}