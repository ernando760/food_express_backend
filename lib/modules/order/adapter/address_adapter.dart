import 'package:delivery_project_using_clean_code/modules/auth/domain/entities/address_entity.dart';
import 'package:delivery_project_using_clean_code/modules/auth/domain/vo/vo_city.dart';
import 'package:delivery_project_using_clean_code/modules/auth/domain/vo/vo_number.dart';
import 'package:delivery_project_using_clean_code/modules/auth/domain/vo/vo_text.dart';

class AddressAdapter {
  static AddressEntity fromJson(dynamic data) => AddressEntity(
      street: VOText(data["street"]),
      district: VOText(data["district"]),
      number: VONumber(data["number"]),
      city: VOCity(data["city"]));

  static Map<String, dynamic> toMap(AddressEntity address) => {
        "street": address.street.value,
        "district": address.district.value,
        "number": address.number.value,
        "city": address.city.value
      };
}
