import 'package:delivery_project_using_clean_code/modules/auth/domain/entities/address_entity.dart';
import 'package:delivery_project_using_clean_code/modules/auth/domain/vo/vo_city.dart';
import 'package:delivery_project_using_clean_code/modules/auth/domain/vo/vo_number.dart';
import 'package:delivery_project_using_clean_code/modules/auth/domain/vo/vo_text.dart';
import 'package:test/test.dart';

void main() {
  test('should create an address entity and validate its values returning true',
      () async {
    final address = AddressEntity(
        street: VOText("street"),
        district: VOText("district"),
        number: VONumber(111),
        city: VOCity("city"));

    final isValidate = address.validate();

    expect(isValidate, isTrue);
  });
}
