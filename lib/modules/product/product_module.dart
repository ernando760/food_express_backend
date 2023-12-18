import 'package:delivery_project_using_clean_code/modules/product/presenter/binds/product_module_binds.dart';

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
