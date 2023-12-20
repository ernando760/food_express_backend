import 'package:delivery_project_using_clean_code/core/utils/dot_env_util.dart';
import 'package:delivery_project_using_clean_code/modules/auth/domain/entities/address_entity.dart';
import 'package:delivery_project_using_clean_code/modules/auth/domain/vo/vo_city.dart';
import 'package:delivery_project_using_clean_code/modules/auth/domain/vo/vo_number.dart';
import 'package:delivery_project_using_clean_code/modules/auth/domain/vo/vo_text.dart';
import 'package:delivery_project_using_clean_code/modules/auth/infra/database/postgres_database.dart';
import 'package:delivery_project_using_clean_code/modules/order/domain/dto/order_dto.dart';
import 'package:delivery_project_using_clean_code/modules/order/domain/entities/order_item_entity.dart';
import 'package:delivery_project_using_clean_code/modules/order/domain/repositories/i_order_repository.dart';
import 'package:delivery_project_using_clean_code/modules/order/infra/repository/order_repository.dart';
import 'package:test/test.dart';

void main() {
  DotEnvUtil.load();
  late final IOrderRepository repository;
  setUpAll(() {
    repository = OrderRepository(PostgresDatabase());
  });
  test('Add order', () async {
    final (:message, :exception) = await repository.addOrder(OrderDto(
        customerName: "fulano",
        address: AddressEntity(
            street: VOText("cabaço"),
            district: VOText("PQP"),
            number: VONumber(212),
            city: VOCity("fuciona")),
        orderItems: [
          OrderItemEntity(productName: "produto", amount: 20, price: 10),
          OrderItemEntity(productName: "produto 1", amount: 20, price: 10),
          OrderItemEntity(productName: "produto 2", amount: 20, price: 10),
        ]));

    print(message);
    print(exception?.messageError);
  });

  test('Cancel order', () async {
    final (:message, :exception) = await repository.cancelOrder(6);

    print(message);
    print(exception?.messageError);
  });

  test('Complete order', () async {
    final (:message, :exception) = await repository.completeOrder(6);

    print(message);
    print(exception?.messageError);
  });
}
