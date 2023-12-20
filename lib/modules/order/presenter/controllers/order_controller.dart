import 'dart:async';

import 'package:delivery_project_using_clean_code/core/extensions/json_response_extension.dart';
import 'package:delivery_project_using_clean_code/modules/order/adapter/address_adapter.dart';
import 'package:delivery_project_using_clean_code/modules/order/adapter/order_item_adapter.dart';
import 'package:delivery_project_using_clean_code/modules/order/domain/dto/order_dto.dart';
import 'package:delivery_project_using_clean_code/modules/order/domain/use_cases/add_order.dart';
import 'package:delivery_project_using_clean_code/modules/order/domain/use_cases/cancel_order.dart';
import 'package:delivery_project_using_clean_code/modules/order/domain/use_cases/complete_order.dart';
import 'package:shelf/shelf.dart';

class OrderController {
  final AddOrder _addOrder;
  final CancelOrder _cancelOrder;
  final CompleteOrder _completeOrder;

  OrderController(this._addOrder, this._cancelOrder, this._completeOrder);
  Future<Response> addOrder(dynamic data) async {
    final (:message, :exception) = await _addOrder.call(OrderDto(
        customerName: data["customer_name"],
        address: AddressAdapter.fromJson(data["address"]),
        orderItems: OrderItemAdapter.toListOrderItem(data["order_items"])));

    if (exception != null) {
      return Response(401)
          .json({"status": 401, "messageError": exception.messageError});
    }

    if (message != null) {
      return Response(200).json({"status": 200, "message": message});
    }

    return Response.internalServerError();
  }

  Future<Response> cancelOrder(int? orderId) async {
    final (:message, :exception) = await _cancelOrder.call(orderId);

    if (exception != null) {
      return Response(401)
          .json({"status": 401, "messageError": exception.messageError});
    }

    if (message != null) {
      return Response(200).json({"status": 200, "message": message});
    }

    return Response.internalServerError();
  }

  Future<Response> completeOrder(int? orderId) async {
    final (:message, :exception) = await _completeOrder.call(orderId);

    if (exception != null) {
      return Response(401)
          .json({"status": 401, "messageError": exception.messageError});
    }

    if (message != null) {
      return Response(200).json({"status": 200, "message": message});
    }

    return Response.internalServerError();
  }
}
