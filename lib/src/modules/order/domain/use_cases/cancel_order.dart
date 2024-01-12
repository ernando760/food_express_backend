import '../errors/i_order_exception.dart';
import '../repositories/i_order_repository.dart';

class CancelOrder {
  final IOrderRepository _repository;

  CancelOrder(this._repository);

  Future<({String? message, IOrderException? exception})> call(
      int? orderId) async {
    if (orderId != null) {
      return await _repository.cancelOrder(orderId);
    }

    return (message: "O numero do pedido está nulo", exception: null);
  }
}
