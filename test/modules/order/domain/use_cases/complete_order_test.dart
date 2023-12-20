import 'package:delivery_project_using_clean_code/modules/order/domain/use_cases/complete_order.dart';
import 'package:mocktail/mocktail.dart';
import 'package:test/test.dart';

class MockCompleteOrder extends Mock implements CompleteOrder {}

void main() {
  late final MockCompleteOrder mockCompleteOrder;

  setUpAll(() {
    mockCompleteOrder = MockCompleteOrder();
  });
  test(
      "Should return a message [O pedido 1 foi finalizado] when i'm call [mockCompleteOrder.call] the method.",
      () async {
    when(() => mockCompleteOrder.call(1)).thenAnswer(
        (_) async => (message: "O pedido 1 foi finalizado", exception: null));

    final (:message, exception: _) = await mockCompleteOrder.call(1);

    expect(message, "O pedido 1 foi finalizado");
    verify(() => mockCompleteOrder.call(1)).called(1);
  });
  test(
      "Should return a message [O número do pedido está nulo] when i'm call [mockCompleteOrder.call] the method.",
      () async {
    when(() => mockCompleteOrder.call(null)).thenAnswer((_) async =>
        (message: "O número do pedido está nulo", exception: null));

    final (:message, exception: _) = await mockCompleteOrder.call(null);

    expect(message, "O número do pedido está nulo");
    verify(() => mockCompleteOrder.call(null)).called(1);
  });
}
