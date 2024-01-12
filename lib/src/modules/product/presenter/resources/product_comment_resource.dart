import 'dart:async';

import 'package:delivery_project_using_clean_code/src/modules/product/barrels/product_module_barrel.dart';
import 'package:shelf/shelf.dart';

class ProductCommentResource extends Resource {
  @override
  List<Route> get routes => [
        Route.get("/comments/:productId/?limits=:limits", _getAllProducts),
        Route.post("/comments/:productId", _addProductComment),
        Route.delete("/comments/:productCommentId", _removeProductComment),
        Route.put("/comments/:productCommentId", _updateProductComment),
      ];

  FutureOr<Response> _getAllProducts(
      ModularArguments arguments, Injector i) async {
    final productCommentController = i.get<ProductCommentController>();

    final res = await productCommentController.getAllProductComments(
        arguments.params["productId"],
        int.parse(arguments.queryParams["limits"] ?? "10"));

    return res;
  }

  FutureOr<Response> _addProductComment(
      ModularArguments args, Injector i) async {
    final productCommentController = i.get<ProductCommentController>();

    final res = await productCommentController.addProductComment(
        args.params["productId"], args.data);

    return res;
  }

  FutureOr<Response> _removeProductComment(
      ModularArguments args, Injector i) async {
    final productCommentController = i.get<ProductCommentController>();

    final res = await productCommentController
        .removeProductComment(args.params["productCommentId"]);

    return res;
  }

  FutureOr<Response> _updateProductComment(
      ModularArguments args, Injector i) async {
    final productCommentController = i.get<ProductCommentController>();

    final res = await productCommentController.updateProductComment(
        args.params["productCommentId"], args.data);

    return res;
  }
}
