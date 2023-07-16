class Product {
  final String productName;
  final String productId;
  final String imageUrl;
  final String unitPrice;
  final String quantity;
  final String totalPrice;
  final String createdAt;

  Product({
    required this.productName,
    required this.productId,
    required this.imageUrl,
    required this.unitPrice,
    required this.quantity,
    required this.totalPrice,
    required this.createdAt,
  });

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      productName: json['ProductName'],
      productId: json['_id'],
      imageUrl: json['Img'],
      unitPrice: json['UnitPrice'],
      quantity: json['Qty'],
      totalPrice: json['TotalPrice'],
      createdAt: json['CreatedDate'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'ProductName': productName,
      'ProductCode': productId,
      'Img': imageUrl,
      'UnitPrice': unitPrice,
      'Qty': quantity,
      'TotalPrice': totalPrice,
    };
  }
}
