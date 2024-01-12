import 'package:delivery_project_using_clean_code/src/modules/auth/auth_module.dart';
import 'package:delivery_project_using_clean_code/src/modules/order/domain/repositories/i_order_repository.dart';
import 'package:delivery_project_using_clean_code/src/modules/order/domain/use_cases/add_order.dart';
import 'package:delivery_project_using_clean_code/src/modules/order/domain/use_cases/cancel_order.dart';
import 'package:delivery_project_using_clean_code/src/modules/order/domain/use_cases/complete_order.dart';
import 'package:delivery_project_using_clean_code/src/modules/order/presenter/controllers/order_controller.dart';
import 'package:delivery_project_using_clean_code/src/modules/order/presenter/resources/order_resource.dart';
import 'package:delivery_project_using_clean_code/src/modules/product/product_module.dart';
import 'package:shelf_modular/shelf_modular.dart';

class OrderModule extends Module {
  @override
  List<Module> get imports => [ProductModule(), AuthModule()];

  @override
  List<Bind<Object>> get binds => [
        Bind.singleton<AddOrder>((i) => AddOrder(i<IOrderRepository>())),
        Bind.singleton<CancelOrder>((i) => CancelOrder(i<IOrderRepository>())),
        Bind.singleton<CompleteOrder>(
            (i) => CompleteOrder(i<IOrderRepository>())),
        Bind.singleton<OrderController>((i) => OrderController(
            i<AddOrder>(), i<CancelOrder>(), i<CompleteOrder>())),
      ];

  @override
  List<ModularRoute> get routes => [Route.resource(OrderResource())];
}
