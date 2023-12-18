import 'package:delivery_project_using_clean_code/modules/product/domain/entities/dto/product_dto.dart';
import 'package:delivery_project_using_clean_code/modules/product/domain/errors/i_product_exception.dart';
import 'package:delivery_project_using_clean_code/modules/product/domain/usecases/product/create_product.dart';
import 'package:mocktail/mocktail.dart';
import 'package:test/test.dart';

class MockCreateProduct extends Mock implements CreateProduct {}

class FakeProductDto extends Fake implements ProductDto {}

void main() {
  late final MockCreateProduct mockCreateProduct;

  setUpAll(() {
    mockCreateProduct = MockCreateProduct();
    registerFallbackValue(FakeProductDto());
  });
  test(
      'Should return a message [O Produto foi criado] when i\'m call the [createProduct.call] method.',
      () async {
    when(() => mockCreateProduct.call(any())).thenAnswer((invocation) async =>
        (message: "O Produto foi criado", exception: null));

    final (:message, :exception) = await mockCreateProduct.call(ProductDto(
      name: "name",
      description: "description",
      price: 10.0,
    ));

    expect(message, "O Produto foi criado");
    expect(exception, isNull);
    verify(() => mockCreateProduct.call(any())).called(1);
  });

  test(
      'Should return a exception with a message error ["O nome e a descrição do produto está vazio"] when i\'m call the [createProduct.call] method.',
      () async {
    when(() => mockCreateProduct.call(any())).thenAnswer((invocation) async => (
          message: null,
          exception: ProductUnknowException(
              messageError: "O nome e a descrição do produto está vazio",
              label: "")
        ));

    final (:message, :exception) = await mockCreateProduct.call(ProductDto(
      name: "",
      description: "",
      price: 10.0,
    ));

    expect(message, isNull);
    expect(
        exception?.messageError, "O nome e a descrição do produto está vazio");
    verify(() => mockCreateProduct.call(any())).called(1);
  });
}
