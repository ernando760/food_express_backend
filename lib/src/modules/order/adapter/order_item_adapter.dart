import '../domain/entities/order_item_entity.dart';

class OrderItemAdapter {
  static OrderItemEntity fromJson(dynamic data) => OrderItemEntity(
      productName: data["product_name"],
      amount: data["amount"],
      price: data["price"]);

  static Map<String, dynamic> toMap(OrderItemEntity orderItem) => {
        "product_name": orderItem.productName,
        "amount": orderItem.amount,
        "price": orderItem.price
      };

  static List<OrderItemEntity> toListOrderItem(dynamic data) =>
      (data as List).map((e) => fromJson(e)).toList();
}
