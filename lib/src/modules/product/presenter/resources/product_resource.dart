import 'dart:async';
import 'package:delivery_project_using_clean_code/src/modules/product/presenter/controllers/product_controller.dart';
import 'package:shelf/shelf.dart';

import 'package:shelf_modular/shelf_modular.dart';

class ProductResource extends Resource {
  @override
  List<Route> get routes => [
        Route.get("/?limits=:limits", _getAllProducts),
        Route.get("/:id", _getProductById),
        Route.post("/", _createProduct),
        Route.delete("/:id", _deleteProduct),
        Route.put("/:id", _updateProduct),
        Route.get("/assets/images/:filename", _getProductImg),
      ];

  FutureOr<Response> _getAllProducts(ModularArguments args, Injector i) async {
    final ProductController productController = i.get<ProductController>();

    final res = await productController
        .getAllProducts(int.parse(args.queryParams["limits"] ?? "10"));

    return res;
  }

  FutureOr<Response> _getProductById(ModularArguments args, Injector i) async {
    final ProductController productController = i.get<ProductController>();

    final res = await productController.geyProductByid(args.params["id"]);

    return res;
  }

  FutureOr<Response> _createProduct(ModularArguments args, Injector i) async {
    final ProductController productController = i.get<ProductController>();

    final res = await productController.createProduct(args.data);

    return res;
  }

  FutureOr<Response> _deleteProduct(ModularArguments args, Injector i) async {
    final ProductController productController = i.get<ProductController>();

    final res = await productController.deleteProduct(args.params["id"]);

    return res;
  }

  FutureOr<Response> _updateProduct(ModularArguments args, Injector i) async {
    final ProductController productController = i.get<ProductController>();

    final res =
        await productController.updateProduct(args.params["id"], args.data);

    return res;
  }

  FutureOr<Response> _getProductImg(ModularArguments args, Injector i) async {
    final ProductController productController = i.get<ProductController>();

    final res =
        await productController.getProductImg(args.params["filename"] ?? "");

    return res;
  }
}
