import '../dto/order_dto.dart';
import '../errors/i_order_exception.dart';
import '../repositories/i_order_repository.dart';

class AddOrder {
  final IOrderRepository _repository;

  AddOrder(this._repository);

  Future<({String? message, IOrderException? exception})> call(
      OrderDto orderDto) async {
    if (orderDto.address.validate()) {
      return await _repository.addOrder(orderDto);
    }
    return (message: "O endereço do cliente está invalido.", exception: null);
  }
}
