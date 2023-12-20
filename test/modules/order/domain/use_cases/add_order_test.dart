import 'package:delivery_project_using_clean_code/modules/auth/domain/entities/address_entity.dart';
import 'package:delivery_project_using_clean_code/modules/auth/domain/vo/vo_city.dart';
import 'package:delivery_project_using_clean_code/modules/auth/domain/vo/vo_number.dart';
import 'package:delivery_project_using_clean_code/modules/auth/domain/vo/vo_text.dart';
import 'package:delivery_project_using_clean_code/modules/order/domain/dto/order_dto.dart';
import 'package:delivery_project_using_clean_code/modules/order/domain/errors/i_order_exception.dart';
import 'package:delivery_project_using_clean_code/modules/order/domain/use_cases/add_order.dart';
import 'package:mocktail/mocktail.dart';
import 'package:test/test.dart';

class MockAddOrder extends Mock implements AddOrder {}

class FakeOrderDto extends Fake implements OrderDto {}

void main() {
  late final MockAddOrder mockAddOrder;
  setUpAll(() {
    registerFallbackValue(FakeOrderDto());
    mockAddOrder = MockAddOrder();
  });

  final orderDto = OrderDto(
      customerName: "customerName",
      address: AddressEntity(
          street: VOText("street"),
          district: VOText("district"),
          number: VONumber(226),
          city: VOCity("city")),
      orderItems: []);
  test(
      'Should return message [O pedido do fulano foi adicionado] when i\'m call [mockAddOrder.call] the method.',
      () async {
    when(() => mockAddOrder.call(any())).thenAnswer((_) async =>
        (message: "O pedido do fulano foi adicionado", exception: null));

    final (:message, exception: _) = await mockAddOrder.call(orderDto);

    expect(message, "O pedido do fulano foi adicionado");

    verify(() => mockAddOrder.call(any())).called(1);
  });

  test(
      "Should return exception with message error [O endereço do cliente está invalido.] when i'm call [mockAddOrder.call] the method.",
      () async {
    when(() => mockAddOrder.call(any())).thenAnswer((_) async => (
          message: null,
          exception: OrderUnknowException(
              messageError: "O endereço do cliente está invalido.",
              label: "label")
        ));

    final (message: _, :exception) = await mockAddOrder.call(orderDto);

    expect(exception?.messageError, "O endereço do cliente está invalido.");

    verify(() => mockAddOrder.call(any())).called(1);
  });
}
