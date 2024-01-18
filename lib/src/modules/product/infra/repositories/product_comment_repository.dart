import 'package:delivery_project_using_clean_code/src/generated/prisma/prisma_client.dart';
import 'package:delivery_project_using_clean_code/src/modules/product/domain/entities/dto/product_comment_dto.dart';
import 'package:delivery_project_using_clean_code/src/modules/product/domain/entities/product_comment_entity.dart';
import 'package:delivery_project_using_clean_code/src/modules/product/domain/errors/i_product_comment_exception.dart';
import 'package:delivery_project_using_clean_code/src/modules/product/domain/repositories/i_product_comment_repository.dart';
import 'package:orm/orm.dart';

class ProductCommentRepository extends IProductCommentRepository {
  final PrismaClient _prismaClient;

  ProductCommentRepository(this._prismaClient);
  @override
  Future<({IProductCommentException? exception, String? message})>
      addProductComment(ProductCommentDto commentDto) async {
    try {
      await _prismaClient.$connect();

      await _prismaClient.productComment.create(
          data: ProductCommentCreateInput(
              username: commentDto.username,
              email: commentDto.email,
              comment: commentDto.comment,
              ratings: commentDto.ratings,
              created: DateTime.now(),
              product: ProductCreateNestedOneWithoutProductCommentsInput(
                  connect: ProductWhereUniqueInput(id: commentDto.productId))));

      return (
        message: "O comentario do produto ${commentDto.productId} foi criado",
        exception: null
      );
    } on PrismaException catch (e, s) {
      return (
        message: null,
        exception: AddProductCommentException(
            messageError: e.message,
            label: "$runtimeType-addProductComment",
            stackTrace: s)
      );
    } catch (e, s) {
      return (
        message: null,
        exception: AddProductCommentException(
            messageError: "Error ao criar o comentario do produto => $e",
            label: "$runtimeType-addProductComment",
            stackTrace: s)
      );
    } finally {
      await _prismaClient.$disconnect();
    }
  }

  @override
  Future<
      ({
        IProductCommentException? exception,
        List<ProductCommentEntity>? productComments
      })> getAllProductComments(String productId, [limit = 10]) async {
    try {
      await _prismaClient.$connect();

      final comments = await _prismaClient.productComment.findMany(
          take: limit,
          where: ProductCommentWhereInput(
              productId: UuidFilter(equals: productId)));
      // CommentAdapter.fromJson(e.toJson())
      final productComments = comments
          .map((e) => ProductCommentEntity(
              id: e.id,
              productId: e.productId,
              username: e.username,
              email: e.email,
              comment: e.comment,
              ratings: e.ratings,
              created: e.created))
          .toList();

      return (productComments: productComments, exception: null);
    } on PrismaException catch (e, s) {
      return (
        productComments: null,
        exception: AddProductCommentException(
            messageError: e.message,
            label: "$runtimeType-getAllProductComments",
            stackTrace: s)
      );
    } catch (e, s) {
      return (
        productComments: null,
        exception: AddProductCommentException(
            messageError: "Error ao obter os comentario do produto => $e",
            label: "$runtimeType-getAllProductComments",
            stackTrace: s)
      );
    } finally {
      await _prismaClient.$disconnect();
    }
  }

  @override
  Future<({IProductCommentException? exception, String? message})>
      removeProductComment(String? commentId) async {
    try {
      await _prismaClient.$connect();

      final comment = await _prismaClient.productComment.delete(
        where: ProductCommentWhereUniqueInput(id: commentId),
      );

      if (comment != null)
        return (message: "O produto $commentId foi removido", exception: null);

      return (
        message: "O produto $commentId não foi encontrado",
        exception: null
      );
    } on PrismaException catch (e, s) {
      return (
        message: null,
        exception: DeleteProductCommentException(
            messageError: e.message,
            label: "$runtimeType-removeProductComment",
            stackTrace: s)
      );
    } catch (e, s) {
      return (
        message: null,
        exception: DeleteProductCommentException(
            messageError: "Error ao deletar o comentario do produto => $e",
            label: "$runtimeType-removeProductComment",
            stackTrace: s)
      );
    } finally {
      await _prismaClient.$disconnect();
    }
  }

  @override
  Future<({IProductCommentException? exception, String? message})>
      updateProductComment(
          String? commentId, ProductCommentDto newCommentDto) async {
    try {
      await _prismaClient.$connect();

      final comment = await _prismaClient.productComment.update(
          data: ProductCommentUpdateInput(
              username:
                  StringFieldUpdateOperationsInput(set: newCommentDto.username),
              email: StringFieldUpdateOperationsInput(set: newCommentDto.email),
              comment:
                  StringFieldUpdateOperationsInput(set: newCommentDto.comment),
              created: DateTimeFieldUpdateOperationsInput(set: DateTime.now()),
              product:
                  ProductUpdateOneRequiredWithoutProductCommentsNestedInput(
                      connect: ProductWhereUniqueInput(
                          id: newCommentDto.productId))),
          where: ProductCommentWhereUniqueInput(id: commentId));

      if (comment != null)
        return (
          message: "O produto $commentId foi atualizado",
          exception: null
        );

      return (
        message: "O produto $commentId não foi encontrado",
        exception: null
      );
    } on PrismaException catch (e, s) {
      return (
        message: null,
        exception: UpdateProductCommentException(
            messageError: e.message,
            label: "$runtimeType-updateProductComment",
            stackTrace: s)
      );
    } catch (e, s) {
      return (
        message: null,
        exception: UpdateProductCommentException(
            messageError: "Error ao deletar o comentario do produto => $e",
            label: "$runtimeType-updateProductComment",
            stackTrace: s)
      );
    } finally {
      await _prismaClient.$disconnect();
    }
  }
}
