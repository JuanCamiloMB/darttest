abstract class Product{
  String name;
  int price;
  int quantity;
  final ProductType type;

  Product(this.name, this.price, this.quantity, this.type);

  Product.fromJson(Map<String, dynamic> json)
      : name = json['name'],
        price = json['price'],
        quantity = json['quantity'],
        type = json['type'];

  @override
  String toString(){
    return '$name $price $quantity';
  }
}

class ProductType{}
 
