import '../../auth/domain/entities/address_entity.dart';
import '../../auth/domain/vo/vo_city.dart';
import '../../auth/domain/vo/vo_number.dart';
import '../../auth/domain/vo/vo_text.dart';

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
