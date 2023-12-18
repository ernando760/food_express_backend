import 'package:delivery_project_using_clean_code/modules/product/domain/errors/i_product_comment_exception.dart';
import 'package:delivery_project_using_clean_code/modules/product/domain/usecases/product_comment/remove_product_comment.dart';
import 'package:mocktail/mocktail.dart';
import 'package:test/test.dart';

class MockRemoveProductComment extends Mock implements RemoveProductComment {}

void main() {
  late final MockRemoveProductComment mockRemoveProductComment;

  setUpAll(() {
    mockRemoveProductComment = MockRemoveProductComment();
  });
  test(
      "Should return a message  [O comentario do produto foi deletado] when i'm call the [MockRemoveProductComment.call] method.",
      () async {
    when(() => mockRemoveProductComment.call("productCommentId")).thenAnswer(
        (_) async =>
            (message: "O comentario do produto foi deletado", exception: null));

    final (:message, :exception) =
        await mockRemoveProductComment.call("productCommentId");

    expect(message, "O comentario do produto foi deletado");
    expect(exception, isNull);
    verify(
      () => mockRemoveProductComment.call("productCommentId"),
    ).called(1);
  });

  test(
      "Should return a exception with message error [Erro: o id do comentario produto está vazio] when i'm call the [MockRemoveProductComment.call] method.",
      () async {
    when(() => mockRemoveProductComment.call("")).thenAnswer((_) async => (
          message: null,
          exception: ProductCommentUnknowException(
              messageError: "Erro: o id do comentario do produto está vazio.",
              label: "label")
        ));

    final (:message, :exception) = await mockRemoveProductComment.call("");

    expect(message, isNull);
    expect(exception?.messageError,
        "Erro: o id do comentario do produto está vazio.");
    verify(
      () => mockRemoveProductComment.call(""),
    ).called(1);
  });
}
