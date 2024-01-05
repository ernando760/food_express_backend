import 'package:delivery_project_using_clean_code/core/utils/dot_env_util.dart';
import 'package:delivery_project_using_clean_code/modules/auth/domain/database/i_database.dart';
import 'package:delivery_project_using_clean_code/modules/auth/domain/entities/address_entity.dart';
import 'package:delivery_project_using_clean_code/modules/auth/domain/vo/vo_city.dart';
import 'package:delivery_project_using_clean_code/modules/auth/domain/vo/vo_number.dart';
import 'package:delivery_project_using_clean_code/modules/auth/domain/vo/vo_text.dart';
import 'package:delivery_project_using_clean_code/modules/order/domain/dto/order_dto.dart';
import 'package:delivery_project_using_clean_code/modules/order/domain/entities/order_item_entity.dart';
import 'package:delivery_project_using_clean_code/modules/order/domain/repositories/i_order_repository.dart';
import 'package:delivery_project_using_clean_code/modules/order/infra/repository/order_repository.dart';
import 'package:mocktail/mocktail.dart';
import 'package:test/test.dart';

final addOrderResult = [
  {
    "customer_name": "fulano",
    "status": "andamento",
    "total_price": 30,
    "create_at": DateTime.now()
  }
];

class MockDatabase extends Mock implements IDatabase {
  @override
  Future<void> openDatabase() async {}

  @override
  Future<int> execute(String path, [values]) async => 0;
}

class FakeOrderDto extends Fake implements OrderDto {}

void main() {
  DotEnvUtil.load();
  late IDatabase database;
  late final IOrderRepository repository;
  setUpAll(() {
    database = MockDatabase();
    repository = OrderRepository(database);
  });

  tearDownAll(() {
    reset(database);
  });
  test(
      'Should add order when i\'m call the [repository.addOrder] method and return a message.',
      () async {
    when(() => database.query(any(), any()))
        .thenAnswer((invocation) async => addOrderResult);

    final (:message, :exception) = await repository.addOrder(OrderDto(
        customerName: "fulano",
        address: AddressEntity(
            street: VOText("Street"),
            district: VOText("District"),
            number: VONumber(202),
            city: VOCity("Palmas")),
        orderItems: [
          OrderItemEntity(productName: "produto1", amount: 2, price: 15),
          OrderItemEntity(productName: "produto2", amount: 4, price: 15),
        ]));

    expect(message, "O pedido do cliente fulano foi adicionado");
    expect(exception?.messageError, isNull);
  });

  test(
      'Should cancel order when i\'m call the [repository.cancelOrder] method and return a message.',
      () async {
    when(
      () => database.query(any(), any()),
    ).thenAnswer((invocation) async => [
          {"order_id": "orderId", "status": "cancelado"}
        ]);
    final (:message, :exception) = await repository.cancelOrder(6);

    expect(message, "O pedido do cliente 6 foi cancelado");
    expect(exception?.messageError, isNull);
  });

  test(
      'Should complete order when i\'m call the [repository.completeOrder] method and return a message.',
      () async {
    when(() => database.query(any(), any())).thenAnswer((_) async => [
          {"order_id": "orderId", "status": "completo"}
        ]);
    final (:message, :exception) = await repository.completeOrder(6);

    expect(message, "O pedido do cliente 6 foi finalizado");
    expect(exception?.messageError, isNull);
  });
}
