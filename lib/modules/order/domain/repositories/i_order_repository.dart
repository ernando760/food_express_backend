import 'package:delivery_project_using_clean_code/modules/order/domain/dto/order_dto.dart';
import 'package:delivery_project_using_clean_code/modules/order/domain/errors/i_order_exception.dart';

abstract class IOrderRepository {
  Future<({String? message, IOrderException? exception})> addOrder(
      OrderDto orderDto);
  Future<({String? message, IOrderException? exception})> cancelOrder(
      int orderId);
  Future<({String? message, IOrderException? exception})> completeOrder(
      int orderId);
}
