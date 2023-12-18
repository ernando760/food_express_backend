import 'package:delivery_project_using_clean_code/modules/product/domain/entities/dto/product_dto.dart';
import 'package:delivery_project_using_clean_code/modules/product/domain/errors/i_product_exception.dart';
import 'package:delivery_project_using_clean_code/modules/product/domain/usecases/product/update_product.dart';
import 'package:mocktail/mocktail.dart';
import 'package:test/test.dart';

class MockUpdateProduct extends Mock implements UpdateProduct {}

class FakeProductDto extends Fake implements ProductDto {}

void main() {
  late final MockUpdateProduct mockUpdateProduct;

  setUpAll(() {
    mockUpdateProduct = MockUpdateProduct();
    registerFallbackValue(FakeProductDto());
  });

  test(
      "Should return message ['O produto foi atualizado'] when i'm call the [mockUpdateProduct.call] method",
      () async {
    when(() => mockUpdateProduct.call("id", any(that: isA<ProductDto>())))
        .thenAnswer((invocation) async =>
            (message: "O produto foi atualizado", exception: null));

    final (:message, :exception) = await mockUpdateProduct.call(
        "id",
        ProductDto(
          name: "name",
          description: "description",
          price: 10.0,
        ));

    expect(message, "O produto foi atualizado");
    expect(exception, isNull);
    verify(
      () => mockUpdateProduct.call("id", any(that: isA<ProductDto>())),
    ).called(1);
  });

  test(
      'Should return exception with message error ["O nome e a descrição do produto está vazio"] when i\'m call the [mockUpdateProduct.call] method.',
      () async {
    when(() => mockUpdateProduct.call("id", any(that: isA<ProductDto>())))
        .thenAnswer((invocation) async => (
              message: null,
              exception: ProductUnknowException(
                  messageError: "O nome e a descrição do produto está vazio",
                  label: "")
            ));

    final (:message, :exception) = await mockUpdateProduct.call(
        "id",
        ProductDto(
          name: "",
          description: "",
          price: 10.0,
        ));

    expect(message, isNull);
    expect(
        exception?.messageError, "O nome e a descrição do produto está vazio");
    verify(() => mockUpdateProduct.call("id", any(that: isA<ProductDto>())))
        .called(1);
  });

  test(
      'Should return exception with message error ["O id não existe, está vazio"] when i\'m call the [mockUpdateProduct.call] method.',
      () async {
    when(() => mockUpdateProduct.call("", any(that: isA<ProductDto>())))
        .thenAnswer((invocation) async => (
              message: null,
              exception: ProductUnknowException(
                  messageError: "O id não existe, está vazio", label: "label")
            ));

    final (:message, :exception) = await mockUpdateProduct.call(
        "",
        ProductDto(
          name: "name",
          description: "description",
          price: 10.0,
        ));

    expect(message, isNull);
    expect(exception?.messageError, "O id não existe, está vazio");
    verify(() => mockUpdateProduct.call("", any(that: isA<ProductDto>())))
        .called(1);
  });
}
