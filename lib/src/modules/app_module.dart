import 'package:delivery_project_using_clean_code/src/generated/prima_module.dart';
import 'package:delivery_project_using_clean_code/src/modules/auth/auth_module.dart';
import 'package:delivery_project_using_clean_code/src/modules/order/order_module.dart';
import 'package:delivery_project_using_clean_code/src/modules/product/product_module.dart';

import 'package:shelf_modular/shelf_modular.dart';

class AppModule extends Module {
  @override
  List<Module> get imports =>
      [PrismaModule(), AuthModule(), ProductModule(), OrderModule()];

  @override
  List<ModularRoute> get routes => [
        Route.module("/auth", module: AuthModule()),
        Route.module("/products", module: ProductModule()),
        Route.module("/order", module: OrderModule())
      ];
}
