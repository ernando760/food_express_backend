import 'package:delivery_project_using_clean_code/modules/product/domain/entities/dto/product_comment_dto.dart';
import 'package:delivery_project_using_clean_code/modules/product/domain/errors/i_product_comment_exception.dart';
import 'package:delivery_project_using_clean_code/modules/product/domain/usecases/product_comment/update_product_comment.dart';
import 'package:mocktail/mocktail.dart';
import 'package:test/test.dart';

class MockUpdateProductComment extends Mock implements UpdateProductComment {}

class FakeProductCommentDto extends Fake implements ProductCommentDto {}

void main() {
  late final MockUpdateProductComment mockUpdateProductComment;

  setUpAll(() {
    mockUpdateProductComment = MockUpdateProductComment();
    registerFallbackValue(FakeProductCommentDto());
  });

  test(
      'Should return message [O comentario do produto foi atualizado] when i\'m call the [MockUpdateProductComment.call] method',
      () async {
    when(() => mockUpdateProductComment.call("productId", any())).thenAnswer(
        (_) async => (
              message: "O comentario do produto foi atualizado",
              exception: null
            ));

    final (:message, :exception) = await mockUpdateProductComment.call(
        "productId",
        ProductCommentDto(
            productId: "productId",
            email: "teste@testando.com",
            username: "teste",
            comment: "está comida é horrivel"));

    expect(message, "O comentario do produto foi atualizado");
    expect(exception, isNull);
    verify(() => mockUpdateProductComment.call("productId", any())).called(1);
  });

  test(
      'Should return exception with message error [Erro: o id do produto esta vazio] when i\'m call the [MockUpdateProductComment.call] method',
      () async {
    when(() => mockUpdateProductComment.call("", any()))
        .thenAnswer((_) async => (
              message: null,
              exception: ProductCommentUnknowException(
                  messageError: "Erro: o id do produto esta vazio",
                  label: "label")
            ));

    final (:message, :exception) = await mockUpdateProductComment.call(
        "",
        ProductCommentDto(
            productId: "",
            email: "teste@testando.com",
            username: "teste",
            comment: "está comida é horrivel"));

    expect(message, isNull);
    expect(exception?.messageError, "Erro: o id do produto esta vazio");
    verify(() => mockUpdateProductComment.call("", any())).called(1);
  });
}
