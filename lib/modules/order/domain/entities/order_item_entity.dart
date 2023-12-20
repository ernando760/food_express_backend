class OrderItemEntity {
  final String productName;
  final double price;
  final int amount;
  OrderItemEntity(
      {required this.productName, required this.amount, required this.price});

  double getTotalPrice() => price * amount;

  @override
  String toString() =>
      "OrderItemEntity(productName:$productName,price:$price,amount:$amount)";
}
