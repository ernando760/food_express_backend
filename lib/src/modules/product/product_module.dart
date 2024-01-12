import 'package:delivery_project_using_clean_code/src/modules/product/presenter/binds/product_module_binds.dart';
import 'package:delivery_project_using_clean_code/src/modules/product/presenter/resources/product_comment_resource.dart';
import 'package:delivery_project_using_clean_code/src/modules/product/presenter/resources/product_resource.dart';

import 'barrels/product_module_barrel.dart';

class ProductModule extends Module {
  @override
  List<Bind<Object>> get binds => ProductModulesBinds.binds;

  @override
  List<ModularRoute> get routes => [
        Route.resource(ProductResource()),
        Route.resource(ProductCommentResource())
      ];
}
