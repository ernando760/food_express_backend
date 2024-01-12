import '../domain/entities/order_entity.dart';
import 'address_adapter.dart';

class OrderAdapter {
  static OrderEntitiy fromJson(dynamic data) {
    final status = OrderStatus.values
        .map((e) => Map.from({e.name: e}).cast<String, OrderStatus>())
        .toList()
        .firstWhere(
          (element) => element.keys.contains(data["status"]),
        )[data["status"]];
    return OrderEntitiy(
        orderId: data["order_id"],
        customerName: data["customer_name"],
        address: AddressAdapter.fromJson(data["address"]),
        createAt: DateTime.tryParse(data["create_at"]),
        status: status ?? OrderStatus.andamento,
        orderItems: []);
  }

  static Map<String, dynamic> toMap(OrderEntitiy order) {
    return {
      "order_id": order.orderId,
      "customer_name": order.customerName,
      "address": AddressAdapter.toMap(order.address),
      "create_at": order.createAtToString,
      "status": order.status.name
    };
  }
}
