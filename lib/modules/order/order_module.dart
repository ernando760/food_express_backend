import 'package:delivery_project_using_clean_code/modules/auth/auth_module.dart';
import 'package:delivery_project_using_clean_code/modules/order/domain/repositories/i_order_repository.dart';
import 'package:delivery_project_using_clean_code/modules/order/domain/use_cases/add_order.dart';
import 'package:delivery_project_using_clean_code/modules/order/domain/use_cases/cancel_order.dart';
import 'package:delivery_project_using_clean_code/modules/order/domain/use_cases/complete_order.dart';
import 'package:delivery_project_using_clean_code/modules/order/infra/repository/order_repository.dart';
import 'package:delivery_project_using_clean_code/modules/order/presenter/controllers/order_controller.dart';
import 'package:delivery_project_using_clean_code/modules/order/presenter/resources/order_resource.dart';
import 'package:delivery_project_using_clean_code/modules/product/barrels/product_module_barrel.dart';
import 'package:delivery_project_using_clean_code/modules/product/product_module.dart';

class OrderModule extends Module {
  @override
  List<Module> get imports => [ProductModule(), AuthModule()];

  @override
  List<Bind<Object>> get binds => [
        Bind.singleton<IOrderRepository>(
            (i) => OrderRepository(i<IDatabase>())),
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
