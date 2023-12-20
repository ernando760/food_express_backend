import 'package:delivery_project_using_clean_code/modules/order/domain/use_cases/cancel_order.dart';
import 'package:mocktail/mocktail.dart';
import 'package:test/test.dart';

class MockCancelOrder extends Mock implements CancelOrder {}

void main() {
  late final MockCancelOrder mockCancelOrder;

  setUpAll(() {
    mockCancelOrder = MockCancelOrder();
  });
  test(
      "Should return a message [O pedido 1 foi cancelado] when i'm call [mockCancelOrder.call] the method.",
      () async {
    when(() => mockCancelOrder.call(1)).thenAnswer(
        (_) async => (message: "O pedido 1 foi cancelado", exception: null));

    final (:message, exception: _) = await mockCancelOrder.call(1);

    expect(message, "O pedido 1 foi cancelado");
    verify(() => mockCancelOrder.call(1)).called(1);
  });
  test(
      "Should return a message [O número do pedido está nulo] when i'm call [mockCancelOrder.call] the method.",
      () async {
    when(() => mockCancelOrder.call(null)).thenAnswer((_) async =>
        (message: "O número do pedido está nulo", exception: null));

    final (:message, exception: _) = await mockCancelOrder.call(null);

    expect(message, "O número do pedido está nulo");
    verify(() => mockCancelOrder.call(null)).called(1);
  });
}
