import 'package:delivery_project_using_clean_code/modules/product/domain/entities/product_entity.dart';
import 'package:delivery_project_using_clean_code/modules/product/domain/errors/i_product_exception.dart';
import 'package:delivery_project_using_clean_code/modules/product/domain/usecases/product/get_product_by_id.dart';

import 'package:mocktail/mocktail.dart';
import 'package:test/test.dart';

class MockGetProductById extends Mock implements GetProductById {}

void main() {
  late final MockGetProductById mockGetProductById;

  setUpAll(() {
    mockGetProductById = MockGetProductById();
  });

  test(
      'Should return a product when i\'m call the [mockGetProductById.call] method.',
      () async {
    when(() => mockGetProductById.call("id")).thenAnswer((invocation) async => (
          product: ProductEntity(
            id: "id",
            name: "name",
            description: "description",
            price: 10.0,
          ),
          exception: null
        ));

    final (:product, :exception) = await mockGetProductById.call("id");

    expect(product?.name, "name");
    expect(product, isA<ProductEntity>());
    expect(exception, isNull);

    verify(
      () => mockGetProductById.call("id"),
    ).called(1);
  });

  test(
      'Should return a exception with message error ["O id não existe, está vazio"] when i\'m call the [mockGetProductById.call] method.',
      () async {
    when(() => mockGetProductById.call("id")).thenAnswer((invocation) async => (
          product: null,
          exception: ProductUnknowException(
              messageError: "O id não existe, está vazio", label: "")
        ));

    final (:product, :exception) = await mockGetProductById.call("id");

    expect(product, isNull);
    expect(exception?.messageError, "O id não existe, está vazio");

    verify(
      () => mockGetProductById.call("id"),
    ).called(1);
  });
}
