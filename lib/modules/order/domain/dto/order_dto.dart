import 'package:delivery_project_using_clean_code/modules/order/domain/entities/order_entity.dart';

class OrderDto extends OrderEntitiy {
  OrderDto({
    required super.customerName,
    required super.address,
    required super.orderItems,
  });
}
