import 'package:delivery_project_using_clean_code/modules/auth/domain/entities/address_entity.dart';
import 'package:delivery_project_using_clean_code/modules/auth/domain/vo/vo_city.dart';
import 'package:delivery_project_using_clean_code/modules/auth/domain/vo/vo_number.dart';
import 'package:delivery_project_using_clean_code/modules/auth/domain/vo/vo_text.dart';
import 'package:delivery_project_using_clean_code/modules/order/domain/entities/order_entity.dart';
import 'package:delivery_project_using_clean_code/modules/order/domain/entities/order_item_entity.dart';
import 'package:test/test.dart';

void main() {
  test('Should create an order', () async {
    final order = OrderEntitiy(
        customerName: "Fulano",
        address: AddressEntity(
            street: VOText("street"),
            district: VOText("district"),
            number: VONumber(222),
            city: VOCity("City")),
        orderItems: [
          OrderItemEntity(productName: "name 1", price: 10, amount: 3),
          OrderItemEntity(productName: "name 1", price: 5, amount: 2),
        ],
        createAt: DateTime.now());

    print(order.totalPrice);
    print(order.status);
    print(order.createAtToString);
    order.changeOrderStatus(OrderStatus.finalizado);
    print(order.address.validate());
    expect(order.totalPrice, 40.0);
  });
}
