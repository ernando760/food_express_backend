// ignore_for_file: curly_braces_in_flow_control_structures

import 'package:delivery_project_using_clean_code/src/generated/prisma/prisma_client.dart';
import 'package:delivery_project_using_clean_code/src/modules/order/domain/dto/order_dto.dart';
import 'package:delivery_project_using_clean_code/src/modules/order/domain/entities/order_entity.dart';
import 'package:delivery_project_using_clean_code/src/modules/order/domain/errors/i_order_exception.dart';
import 'package:delivery_project_using_clean_code/src/modules/order/domain/repositories/i_order_repository.dart';
import 'package:orm/orm.dart';

class OrderRepository extends IOrderRepository {
  final PrismaClient _prismaClient;

  OrderRepository(this._prismaClient);
  @override
  Future<({IOrderException? exception, String? message})> addOrder(
      OrderDto orderDto) async {
    try {
      await _prismaClient.$connect();

      await _prismaClient.customerOrder.create(
          data: CustomerOrderCreateInput(
              customerName: orderDto.customerName,
              status: orderDto.status.name,
              address:
                  AddressCreateNestedManyWithoutCustomerOrderInput(create: [
                AddressCreateWithoutCustomerOrderInput(
                    street: orderDto.address.street.value,
                    district: orderDto.address.district.value,
                    number: orderDto.address.number.value,
                    city: orderDto.address.city.value)
              ]),
              totalPrice: (orderDto.totalPrice * 100).toInt(),
              created: DateTime.now()));
      return (
        message: "O pedido do cliente ${orderDto.customerName} foi adicionado",
        exception: null
      );
    } on PrismaException catch (e, s) {
      return (
        message: null,
        exception: AddOrderException(
            messageError: e.message,
            label: "$runtimeType-addOrder",
            stackTrace: s)
      );
    } catch (e, s) {
      return (
        message: null,
        exception: AddOrderException(
            messageError: "Error ao adicionar o pedido => $e",
            label: "$runtimeType-addOrder",
            stackTrace: s)
      );
    } finally {
      await _prismaClient.$connect();
    }
  }

  @override
  Future<({IOrderException? exception, String? message})> cancelOrder(
      int orderId) async {
    try {
      await _prismaClient.$connect();

      final order = await _prismaClient.customerOrder.update(
          data: CustomerOrderUpdateInput(
              status: StringFieldUpdateOperationsInput(
                  set: OrderStatus.cancelado.name)),
          where: CustomerOrderWhereUniqueInput(id: orderId));
      if (order != null) {
        return (
          message: "O pedido do cliente ${order.customerName} foi cancelado",
          exception: null
        );
      }
      return (
        message: "O pedido do cliente não foi encontrado",
        exception: null
      );
    } on PrismaException catch (e, s) {
      return (
        message: null,
        exception: CancelOrderException(
            messageError: e.message,
            label: "$runtimeType-cancelOrder",
            stackTrace: s)
      );
    } catch (e, s) {
      return (
        message: null,
        exception: CancelOrderException(
            messageError: "Error ao cancelar o pedido => $e",
            label: "$runtimeType-cancelOrder",
            stackTrace: s)
      );
    } finally {
      await _prismaClient.$connect();
    }
  }

  @override
  Future<({IOrderException? exception, String? message})> completeOrder(
      int orderId) async {
    try {
      await _prismaClient.$connect();

      final order = await _prismaClient.customerOrder.update(
          data: CustomerOrderUpdateInput(
              status: StringFieldUpdateOperationsInput(
                  set: OrderStatus.finalizado.name)),
          where: CustomerOrderWhereUniqueInput(id: orderId));
      if (order != null) {
        return (
          message: "O pedido do cliente ${order.customerName} foi finalizado",
          exception: null
        );
      }
      return (
        message: "O pedido do cliente não foi encontrado",
        exception: null
      );
    } on PrismaException catch (e, s) {
      return (
        message: null,
        exception: CancelOrderException(
            messageError: e.message,
            label: "$runtimeType-completeOrder",
            stackTrace: s)
      );
    } catch (e, s) {
      return (
        message: null,
        exception: CancelOrderException(
            messageError: "Error ao cancelar o pedido => $e",
            label: "$runtimeType-completeOrder",
            stackTrace: s)
      );
    } finally {
      await _prismaClient.$connect();
    }
  }
}
