import 'package:delivery_project_using_clean_code/modules/auth/auth_module.dart';
import 'package:delivery_project_using_clean_code/modules/order/order_module.dart';
import 'package:delivery_project_using_clean_code/modules/product/barrels/product_module_barrel.dart';
import 'package:delivery_project_using_clean_code/modules/product/product_module.dart';

class AppModule extends Module {
  @override
  List<Module> get imports => [AuthModule(), ProductModule(), OrderModule()];
  @override
  List<ModularRoute> get routes => [
        Route.module("/auth", module: AuthModule()),
        Route.module("/products", module: ProductModule()),
        Route.module("/order", module: OrderModule())
      ];
}
