import 'package:delivery_project_using_clean_code/modules/product/domain/entities/product_comment_entity.dart';
import 'package:delivery_project_using_clean_code/modules/product/domain/errors/i_product_comment_exception.dart';
import 'package:delivery_project_using_clean_code/modules/product/domain/usecases/product_comment/get_all_product_comments.dart';
import 'package:mocktail/mocktail.dart';
import 'package:test/test.dart';

class MockGetAllProductComments extends Mock implements GetAllProductComments {}

void main() {
  late final MockGetAllProductComments mockGetAllProductComments;

  final mockProductComments = [
    ProductCommentEntity(
        id: "id",
        productId: "productId",
        email: "testando@teste.com",
        username: "teste",
        comment: "esta comida e horrivel"),
    ProductCommentEntity(
        id: "id",
        productId: "productId",
        email: "testando@teste.com",
        username: "teste",
        ratings: 3,
        comment: "esta comida é otima"),
    ProductCommentEntity(
        id: "id",
        productId: "productId",
        email: "testando@teste.com",
        username: "teste",
        ratings: 5,
        comment: "esta comida é muito gostoso"),
  ];

  setUpAll(() {
    mockGetAllProductComments = MockGetAllProductComments();
  });
  test(
      "Should return the product's comments list when i'm call the [MockGetAllProductComments.call] method.",
      () async {
    when(() => mockGetAllProductComments.call("productId")).thenAnswer(
        (_) async => (productComments: mockProductComments, exception: null));

    final (:productComments, :exception) =
        await mockGetAllProductComments.call("productId");

    expect(productComments, mockProductComments);
    print(productComments);
    expect(exception, isNull);

    verify(
      () => mockGetAllProductComments.call("productId"),
    ).called(1);
  });

  test(
      "Should return a exception with message error [Erro: o id do produto está vazio] when i'm call the [MockGetAllProductComments.call] method.",
      () async {
    when(() => mockGetAllProductComments.call("")).thenAnswer((_) async => (
          productComments: null,
          exception: ProductCommentUnknowException(
              messageError: "Erro: o id do produto está vazio", label: "label")
        ));

    final (:productComments, :exception) =
        await mockGetAllProductComments.call("");

    expect(productComments, isNull);
    print(productComments);
    expect(exception?.messageError, "Erro: o id do produto está vazio");

    verify(
      () => mockGetAllProductComments.call(""),
    ).called(1);
  });
}
