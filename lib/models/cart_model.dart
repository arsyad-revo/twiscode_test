class Cart {
  int? id;
  String? productId;
  String? productName;
  num? productPrice;
  int? quantity;
  String? condition;
  String? image;
  String? weight;

  Cart(
      {this.id,
      this.productId,
      this.productName,
      this.productPrice,
      this.quantity,
      this.condition,
      this.image,
      this.weight});

  Cart.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        productId = json['productId'],
        productName = json['productName'],
        weight = json['weight'],
        productPrice = json['productPrice'],
        quantity = json['quantity'],
        condition = json['condition'],
        image = json['image'];

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'productId': productId,
      'productName': productName,
      'weight': weight,
      'productPrice': productPrice,
      'quantity': quantity,
      'condition': condition,
      'image': image,
    };
  }
}
