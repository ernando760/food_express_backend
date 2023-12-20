import 'package:delivery_project_using_clean_code/modules/auth/domain/entities/address_entity.dart';
import 'package:delivery_project_using_clean_code/modules/order/domain/entities/order_item_entity.dart';

enum OrderStatus { finalizado, pendente, cancelado, andamento }

class OrderEntitiy {
  final int? orderId;
  final String customerName;
  final AddressEntity address;
  final DateTime? createAt;
  final List<OrderItemEntity> orderItems;

  OrderStatus _status;

  OrderEntitiy(
      {this.orderId,
      required this.customerName,
      required this.address,
      required this.orderItems,
      this.createAt,
      OrderStatus status = OrderStatus.andamento})
      : _status = status;

  double get totalPrice => orderItems
      .map((e) => e.getTotalPrice())
      .reduce((value, element) => value + element);

  OrderStatus get status => _status;

  String get createAtToString => createAt.toString().split(".")[0];

  DateTime createDate() => DateTime.now();

  void changeOrderStatus(OrderStatus orderStatus) => _status = orderStatus;

  @override
  String toString() =>
      "OrderEntity(orderId:$orderId,customerName:$customerName,address:$address,orderItems:$orderItems,createAt:$createAtToString,status:$status)";
}
