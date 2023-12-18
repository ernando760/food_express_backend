import 'package:delivery_project_using_clean_code/modules/product/domain/entities/product_entity.dart';
import 'package:delivery_project_using_clean_code/modules/product/domain/usecases/product/get_all_products.dart';
import 'package:mocktail/mocktail.dart';
import 'package:test/test.dart';

class MockGetAllProducts extends Mock implements GetAllProducts {}

void main() {
  final MockGetAllProducts mockGetAllProducts = MockGetAllProducts();

  final mockProducts = [
    ProductEntity(
      id: "id",
      name: "name",
      description: "description",
      price: 10.0,
    ),
    ProductEntity(
      id: "id",
      name: "name",
      description: "description",
      price: 10.0,
    ),
    ProductEntity(
      id: "id",
      name: "name",
      description: "description",
      price: 10.0,
    ),
  ];
  test('Should return all products when calling [getAllUsers.call] methods',
      () async {
    when(() => mockGetAllProducts.call())
        .thenAnswer((_) async => (products: mockProducts, exception: null));

    final (:products, :exception) = await mockGetAllProducts.call();

    print(products);

    expect(products, mockProducts);
    expect(exception, isNull);
  });
}
