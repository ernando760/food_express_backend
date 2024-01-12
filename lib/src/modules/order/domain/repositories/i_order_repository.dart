import '../dto/order_dto.dart';
import '../errors/i_order_exception.dart';

abstract class IOrderRepository {
  Future<({String? message, IOrderException? exception})> addOrder(
      OrderDto orderDto);
  Future<({String? message, IOrderException? exception})> cancelOrder(
      int orderId);
  Future<({String? message, IOrderException? exception})> completeOrder(
      int orderId);
}
