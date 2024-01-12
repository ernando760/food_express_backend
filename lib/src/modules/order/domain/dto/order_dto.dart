import '../entities/order_entity.dart';

class OrderDto extends OrderEntitiy {
  OrderDto({
    required super.customerName,
    required super.address,
    required super.orderItems,
  });
}
