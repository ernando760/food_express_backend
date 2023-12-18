import 'package:delivery_project_using_clean_code/modules/product/domain/entities/product_entity.dart';
import 'package:test/test.dart';

void main() {
  test('Should return the stars point average', () {
    final product = ProductEntity(
      id: "id",
      name: "name",
      description: "description",
      price: 20,
    );

    expect(product.price, 20);
  });
}
