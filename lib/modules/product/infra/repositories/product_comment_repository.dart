import 'package:delivery_project_using_clean_code/modules/auth/domain/database/i_database.dart';
import 'package:delivery_project_using_clean_code/modules/auth/domain/errors/i_database_exception.dart';
import 'package:delivery_project_using_clean_code/modules/product/adapters/comment_adapter.dart';
import 'package:delivery_project_using_clean_code/modules/product/domain/entities/dto/product_comment_dto.dart';
import 'package:delivery_project_using_clean_code/modules/product/domain/entities/product_comment_entity.dart';
import 'package:delivery_project_using_clean_code/modules/product/domain/errors/i_product_comment_exception.dart';
import 'package:delivery_project_using_clean_code/modules/product/domain/repositories/i_product_comment_repository.dart';

class ProductCommentRepository extends IProductCommentRepository {
  final IDatabase _database;

  ProductCommentRepository(this._database);

  @override
  Future<({IProductCommentException? exception, String? message})>
      addProductComment(ProductCommentDto commentDto) async {
    try {
      await _database.openDatabase();

      await _database.query(
          "INSERT INTO product_comment (product_id,username,email,ratings,comment,create_time) VALUES (@product_id,@username,@email,@ratings,@comment,@create_time)",
          {
            "product_id": commentDto.productId,
            "username": commentDto.username,
            "email": commentDto.email,
            "ratings": commentDto.ratings,
            "comment": commentDto.comment,
            "create_time": DateTime.now().toLocal()
          });

      return (message: "O comentario do produto foi criado", exception: null);
    } on OpenDatabaseException catch (e) {
      return (
        message: null,
        exception: AddProductCommentException(
            messageError: e.messageError,
            label: "$runtimeType-addProductComment -> ${e.label}")
      );
    } on QueryDatabaseException catch (e) {
      return (
        message: null,
        exception: AddProductCommentException(
            messageError: e.messageError,
            label: "$runtimeType-addProductComment -> ${e.label}")
      );
    } catch (e) {
      return (
        message: null,
        exception: ProductCommentUnknowException(
            messageError:
                "Error ao criar o comentario do produto ${commentDto.productId}",
            label: "$runtimeType-addProductComment")
      );
    } finally {
      _database.closeDatabase();
    }
  }

  @override
  Future<
      ({
        IProductCommentException? exception,
        List<ProductCommentEntity>? productComments
      })> getAllProductComments(String productId, [limit = 10]) async {
    try {
      final List<ProductCommentEntity> productComments = [];
      await _database.openDatabase();

      final rows = await _database.query(
          "SELECT * FROM product_comment WHERE product_id = @product_id LIMIT @limit",
          {"product_id": productId, "limit": limit});

      for (var row in rows) {
        print(row);
        final comment = CommentAdapter.fromJson(row);
        productComments.add(comment);
      }

      return (productComments: productComments, exception: null);
    } on OpenDatabaseException catch (e) {
      return (
        productComments: null,
        exception: GetAllProductCommentsException(
            messageError: e.messageError,
            label: "$runtimeType-getAllProductComments -> ${e.label}")
      );
    } on QueryDatabaseException catch (e) {
      return (
        productComments: null,
        exception: GetAllProductCommentsException(
            messageError: e.messageError,
            label: "$runtimeType-getAllProductComments -> ${e.label}")
      );
    } catch (e, s) {
      print(s);
      return (
        productComments: null,
        exception: ProductCommentUnknowException(
            messageError:
                "Error ao obter os comentarios do produto $productId $e",
            label: "$runtimeType-getAllProductComments")
      );
    } finally {
      _database.closeDatabase();
    }
  }

  @override
  Future<({IProductCommentException? exception, String? message})>
      removeProductComment(String? commentId) async {
    try {
      await _database.openDatabase();

      await _database.query(
          "DELETE FROM product_comment WHERE id = @comment_id",
          {"comment_id": commentId});

      return (message: "O comentario do produto foi deletado", exception: null);
    } on OpenDatabaseException catch (e) {
      return (
        message: null,
        exception: DeleteProductCommentException(
            messageError: e.messageError,
            label: "$runtimeType-deleteProductComment -> ${e.label}")
      );
    } on QueryDatabaseException catch (e) {
      return (
        message: null,
        exception: DeleteProductCommentException(
            messageError: e.messageError,
            label: "$runtimeType-deleteProductComment -> ${e.label}")
      );
    } catch (e) {
      return (
        message: null,
        exception: ProductCommentUnknowException(
            messageError: "Error ao deletar o comentario do produto $commentId",
            label: "$runtimeType-deleteProductComment")
      );
    } finally {
      _database.closeDatabase();
    }
  }

  @override
  Future<({IProductCommentException? exception, String? message})>
      updateProductComment(
          String? commentId, ProductCommentDto newCommentDto) async {
    try {
      await _database.openDatabase();
      await _database.query(
          "UPDATE product SET username = @username, email = @email ratings = @ratings, comment = @comment WHERE id = @comment_id",
          {
            "comment_id": commentId,
            "username": newCommentDto.username,
            "ratings": newCommentDto.ratings,
            "comment": newCommentDto.comment
          });

      return (
        message: "O comentario do produto foi atualizado",
        exception: null
      );
    } on OpenDatabaseException catch (e) {
      return (
        message: null,
        exception: UpdateProductCommentException(
            messageError: e.messageError,
            label: "$runtimeType-updateProductComment -> ${e.label}")
      );
    } on QueryDatabaseException catch (e) {
      return (
        message: null,
        exception: UpdateProductCommentException(
            messageError: e.messageError,
            label: "$runtimeType-updateProductComment -> ${e.label}")
      );
    } catch (e) {
      return (
        message: null,
        exception: ProductCommentUnknowException(
            messageError:
                "Error ao atualizar o comentario do produto $commentId",
            label: "$runtimeType-updateProductComment")
      );
    } finally {
      _database.closeDatabase();
    }
  }
}
