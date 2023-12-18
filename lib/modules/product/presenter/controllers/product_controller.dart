import 'dart:async';

import 'package:delivery_project_using_clean_code/core/extensions/json_response_extension.dart';
import 'package:delivery_project_using_clean_code/modules/product/adapters/product_adapter.dart';
import 'package:delivery_project_using_clean_code/modules/product/domain/entities/dto/product_dto.dart';
import 'package:delivery_project_using_clean_code/modules/product/domain/entities/product_comment_entity.dart';
import 'package:delivery_project_using_clean_code/modules/product/domain/usecases/product/create_product.dart';
import 'package:delivery_project_using_clean_code/modules/product/domain/usecases/product/delete_product.dart';
import 'package:delivery_project_using_clean_code/modules/product/domain/usecases/product/get_all_products.dart';
import 'package:delivery_project_using_clean_code/modules/product/domain/usecases/product/get_product_by_id.dart';
import 'package:delivery_project_using_clean_code/modules/product/domain/usecases/product/get_product_img.dart';
import 'package:delivery_project_using_clean_code/modules/product/domain/usecases/product/update_product.dart';
import 'package:delivery_project_using_clean_code/modules/product/domain/usecases/product_comment/get_all_product_comments.dart';
import 'package:shelf/shelf.dart';

class ProductController {
  final GetAllProducts _getAllProducts;
  final GetAllProductComments _getAllProductComments;
  final GetProductById _getProductById;
  final GetProductImg _getProductImg;
  final CreateProduct _createProduct;
  final UpdateProduct _updateProduct;
  final DeleteProduct _deleteProduct;

  ProductController(
      this._createProduct,
      this._getProductById,
      this._updateProduct,
      this._getProductImg,
      this._deleteProduct,
      this._getAllProducts,
      this._getAllProductComments);

  FutureOr<Response> getAllProducts([int limit = 10]) async {
    final (:products, :exception) = await _getAllProducts(limit);

    if (exception != null) {
      return Response(404)
          .json({"statusCode": 404, "message": exception.messageError});
    }

    if (products != null) {
      for (var product in products) {
        final commentsMap = await _getAllCommentsById(product.id);
        product.comments = commentsMap[product.id]!;
      }

      return Response(200)
          .json(products.map((e) => ProductAdapter.toMap(e)).toList());
    }

    return Response.internalServerError();
  }

  Future<Response> geyProductByid(String? id) async {
    final (:product, :exception) = await _getProductById(id);

    if (exception != null) {
      return Response(404)
          .json({"statusCode": 404, "messageError": exception.messageError});
    }
    if (product != null) {
      return Response(200).json(ProductAdapter.toMap(product));
    }

    return Response.internalServerError();
  }

  Future<Response> createProduct(dynamic data) async {
    final (:message, :exception) = await _createProduct(ProductDto(
        name: data["name"],
        description: data["description"],
        imgUrl: data["img_url"],
        price: data["price"]));

    if (exception != null) {
      return Response(404)
          .json({"statusCode": 404, "messageError": exception.messageError});
    }
    if (message != null) {
      return Response(200).json({"statusCode": 200, "message": message});
    }

    return Response.internalServerError();
  }

  Future<Response> deleteProduct(String? id) async {
    final (:message, :exception) = await _deleteProduct(id);

    if (exception != null) {
      return Response(404)
          .json({"statusCode": 404, "messageError": exception.messageError});
    }
    if (message != null) {
      return Response(200).json({"statusCode": 200, "message": message});
    }

    return Response.internalServerError();
  }

  Future<Response> updateProduct(String? id, dynamic data) async {
    final (:message, :exception) = await _updateProduct(
        id,
        ProductDto(
            name: data["name"],
            description: data["description"],
            imgUrl: data["img_url"],
            price: data["price"]));

    if (exception != null) {
      return Response(404)
          .json({"statusCode": 404, "messageError": exception.messageError});
    }
    if (message != null) {
      return Response(200).json({"statusCode": 200, "message": message});
    }

    return Response.internalServerError();
  }

  Future<Response> getProductImg(String fileName) async {
    final (:bytes, :imgType, :exception) = await _getProductImg(fileName);

    if (exception != null) {
      return Response(404)
          .json({"statusCode": 404, "messageError": exception.messageError});
    }
    if (bytes != null) {
      return Response.ok(bytes, headers: {"Content-Type": "image/$imgType"});
    }

    return Response.internalServerError();
  }

  Future<Map<String, List<ProductCommentEntity>?>> _getAllCommentsById(
      String? id,
      [int limit = 10]) async {
    if (id != null) {
      final res = await _getAllProductComments(id, limit);

      Map<String, List<ProductCommentEntity>?> map = {
        id: res.productComments != null
            ? res.productComments
                ?.where((element) => element.productId == id)
                .toList()
            : []
      };
      return map;
    }
    return {};
  }
}
