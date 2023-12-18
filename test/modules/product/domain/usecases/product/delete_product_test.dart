import 'package:delivery_project_using_clean_code/modules/product/domain/errors/i_product_exception.dart';
import 'package:delivery_project_using_clean_code/modules/product/domain/usecases/product/delete_product.dart';
import 'package:mocktail/mocktail.dart';
import 'package:test/test.dart';

class MockDeleteProduct extends Mock implements DeleteProduct {}

void main() {
  late final MockDeleteProduct mockDeleteProduct;

  setUpAll(() {
    mockDeleteProduct = MockDeleteProduct();
  });
  test(
      'Should return a message [O produto foi deletado] when i\'m call the [MockDeleteProduct.call] method.',
      () async {
    when(
      () => mockDeleteProduct.call("id"),
    ).thenAnswer((invocation) async =>
        (message: "O produto foi deletado", exception: null));

    final (:message, :exception) = await mockDeleteProduct.call("id");

    expect(message, "O produto foi deletado");
    expect(exception, isNull);

    verify(() => mockDeleteProduct.call("id")).called(1);
  });

  test(
      'Should return a exception with a message error [O id não existe, está vazio] when i\'m call the [MockDeleteProduct.call] method.',
      () async {
    when(
      () => mockDeleteProduct.call("id"),
    ).thenAnswer((invocation) async => (
          message: null,
          exception: ProductUnknowException(
              messageError: "O id não existe, está vazio", label: "")
        ));

    final (:message, :exception) = await mockDeleteProduct.call("id");

    expect(message, isNull);
    expect(exception?.messageError, "O id não existe, está vazio");

    verify(() => mockDeleteProduct.call("id")).called(1);
  });
}
