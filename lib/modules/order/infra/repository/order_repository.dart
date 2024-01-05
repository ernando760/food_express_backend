// ignore_for_file: curly_braces_in_flow_control_structures

import 'package:delivery_project_using_clean_code/modules/auth/domain/database/i_database.dart';
import 'package:delivery_project_using_clean_code/modules/auth/domain/errors/i_database_exception.dart';
import 'package:delivery_project_using_clean_code/modules/order/domain/dto/order_dto.dart';
import 'package:delivery_project_using_clean_code/modules/order/domain/entities/order_entity.dart';
import 'package:delivery_project_using_clean_code/modules/order/domain/errors/i_order_exception.dart';
import 'package:delivery_project_using_clean_code/modules/order/domain/repositories/i_order_repository.dart';

class OrderRepository extends IOrderRepository {
  final IDatabase _database;

  OrderRepository(this._database);

  @override
  Future<({IOrderException? exception, String? message})> addOrder(
      OrderDto orderDto) async {
    try {
      await _database.openDatabase();

      final [orderIdMap] = await _database.query(
          "INSERT INTO order_product(customer_name,status,total_price,create_at) VALUES (@customer_name,@status,@total_price,@create_at) RETURNING order_id;",
          {
            "customer_name": orderDto.customerName,
            "status": orderDto.status.name,
            "total_price": orderDto.totalPrice,
            "create_at": orderDto.createDate()
          });

      await _database.query(
          "INSERT INTO customer_address(street,district,number,city,order_id) VALUES(@street,@district,@number,@city,@order_id)",
          {
            "street": orderDto.address.street.value,
            "district": orderDto.address.district.value,
            "number": orderDto.address.number.value,
            "city": orderDto.address.city.value,
            "order_id": orderIdMap["order_id"]
          });
      for (var orderItem in orderDto.orderItems) {
        await _database.query(
            "INSERT INTO order_item(product_name,price,amount,order_id) VALUES(@product_name,@price,@amount,@order_id)",
            {
              "product_name": orderItem.productName,
              "price": orderItem.price,
              "amount": orderItem.amount,
              "order_id": orderIdMap["order_id"]
            });
      }

      return (
        message: "O pedido do cliente ${orderDto.customerName} foi adicionado",
        exception: null
      );
    } on OpenDatabaseException catch (e) {
      return (
        message: null,
        exception: AddOrderException(
            messageError: e.messageError,
            label: "$runtimeType-addOrder -> ${e.label}")
      );
    } on QueryDatabaseException catch (e) {
      return (
        message: null,
        exception: AddOrderException(
            messageError: e.messageError,
            label: "$runtimeType-addOrder -> ${e.label}")
      );
    } catch (e, s) {
      return (
        message: null,
        exception: OrderUnknowException(
            messageError: "Error ao adicionar o perdido: $e",
            label: "$runtimeType-addOrder",
            stackTrace: s)
      );
    } finally {
      _database.closeDatabase();
    }
  }

  @override
  Future<({IOrderException? exception, String? message})> cancelOrder(
      int orderId) async {
    try {
      await _database.openDatabase();
      await _database.query(
          "UPDATE order_product SET status = @status WHERE order_id = @order_id",
          {
            "order_id": orderId,
            "status": OrderStatus.cancelado.name,
          });

      return (
        message: "O pedido do cliente $orderId foi cancelado",
        exception: null
      );
    } on OpenDatabaseException catch (e) {
      return (
        message: null,
        exception: CancelOrderException(
            messageError: e.messageError,
            label: "$runtimeType-cancelOrder -> ${e.label}")
      );
    } on QueryDatabaseException catch (e) {
      return (
        message: null,
        exception: CancelOrderException(
            messageError: e.messageError,
            label: "$runtimeType-cancelOrder -> ${e.label}")
      );
    } catch (e, s) {
      return (
        message: null,
        exception: OrderUnknowException(
            messageError: "Error ao cancelar o perdido: $e",
            label: "$runtimeType-cancelOrder",
            stackTrace: s)
      );
    } finally {
      _database.closeDatabase();
    }
  }

  @override
  Future<({IOrderException? exception, String? message})> completeOrder(
      int orderId) async {
    try {
      await _database.openDatabase();
      final [statusMap] = await _database.query(
          "SELECT status FROM order_product WHERE order_id = @order_id",
          {"order_id": orderId});
      if (statusMap["status"] == "cancelado")
        return (
          message:
              "Este pedido $orderId foi cancelado,por favor faça outro pedido",
          exception: null
        );
      await _database.query(
          "UPDATE order_product SET status = @status WHERE order_id = @order_id",
          {
            "order_id": orderId,
            "status": OrderStatus.finalizado.name,
          });

      return (
        message: "O pedido do cliente $orderId foi finalizado",
        exception: null
      );
    } on OpenDatabaseException catch (e) {
      return (
        message: null,
        exception: CompleteOrderException(
            messageError: e.messageError,
            label: "$runtimeType-completeOrder -> ${e.label}")
      );
    } on QueryDatabaseException catch (e) {
      return (
        message: null,
        exception: CompleteOrderException(
            messageError: e.messageError,
            label: "$runtimeType-completeOrder -> ${e.label}")
      );
    } catch (e) {
      return (
        message: null,
        exception: OrderUnknowException(
            messageError: "Error ao finalizar o perdido",
            label: "$runtimeType-completeOrder")
      );
    } finally {
      _database.closeDatabase();
    }
  }
}
