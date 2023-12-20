import 'dart:async';

import 'package:delivery_project_using_clean_code/modules/order/presenter/controllers/order_controller.dart';
import 'package:shelf/shelf.dart';
import 'package:shelf_modular/shelf_modular.dart';

class OrderResource extends Resource {
  @override
  List<Route> get routes => [
        Route.post("/add", _addOrder),
        Route.post("/cancel/:order_id", _cancelOrder),
        Route.post("/complete/:order_id", _completeOrder),
      ];

  FutureOr<Response> _addOrder(Injector i, ModularArguments args) async {
    final orderController = i.get<OrderController>();

    final res = await orderController.addOrder(args.data);

    return res;
  }

  FutureOr<Response> _cancelOrder(Injector i, ModularArguments args) async {
    final orderController = i.get<OrderController>();
    final res = await orderController
        .cancelOrder(int.tryParse(args.params["order_id"]));

    return res;
  }

  FutureOr<Response> _completeOrder(Injector i, ModularArguments args) async {
    final orderController = i.get<OrderController>();

    final res = await orderController
        .completeOrder(int.tryParse(args.params["order_id"]));

    return res;
  }
}
