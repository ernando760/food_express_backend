import 'package:delivery_project_using_clean_code/modules/product/domain/entities/dto/product_comment_dto.dart';
import 'package:delivery_project_using_clean_code/modules/product/domain/errors/i_product_comment_exception.dart';
import 'package:delivery_project_using_clean_code/modules/product/domain/usecases/product_comment/add_product_comment.dart';
import 'package:mocktail/mocktail.dart';
import 'package:test/test.dart';

class MockAddProductComment extends Mock implements AddProductComment {}

class FakeProductCommentDto extends Fake implements ProductCommentDto {}

void main() {
  late final MockAddProductComment mockAddProductComment;

  setUpAll(() {
    mockAddProductComment = MockAddProductComment();
    registerFallbackValue(FakeProductCommentDto());
  });
  test(
      'Should return message [O comentario do produto foi criado] when i\'m call the [MockAddProductComment.call] method',
      () async {
    when(() => mockAddProductComment.call(any())).thenAnswer((_) async =>
        (message: "O comentario do produto foi criado", exception: null));

    final (:message, :exception) = await mockAddProductComment.call(
        ProductCommentDto(
            productId: "productid",
            email: "teste@testando.com",
            username: "teste",
            comment: "está comida é horrivel"));

    expect(message, "O comentario do produto foi criado");
    expect(exception, isNull);
    verify(() => mockAddProductComment.call(any())).called(1);
  });

  test(
      'Should return exception with message error [Erro: o id do produto esta vazio] when i\'m call the [MockAddProductComment.call] method',
      () async {
    when(() => mockAddProductComment.call(any())).thenAnswer((_) async => (
          message: null,
          exception: ProductCommentUnknowException(
              messageError: "Erro: o id do produto esta vazio", label: "label")
        ));

    final (:message, :exception) = await mockAddProductComment.call(
        ProductCommentDto(
            productId: "",
            email: "teste@testando.com",
            username: "teste",
            comment: "está comida é horrivel"));

    expect(message, isNull);
    expect(exception?.messageError, "Erro: o id do produto esta vazio");
    verify(() => mockAddProductComment.call(any())).called(1);
  });
}
