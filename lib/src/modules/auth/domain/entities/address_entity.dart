import '../vo/vo_city.dart';
import '../vo/vo_number.dart';
import '../vo/vo_text.dart';

class AddressEntity {
  final VOText street;
  final VOText district;
  final VONumber number;
  final VOCity city;

  AddressEntity(
      {required this.street,
      required this.district,
      required this.number,
      required this.city});

  bool validate() {
    final isValidate =
        _validateMap.values.reduce((value, element) => value == element);
    if (isValidate) return true;
    return false;
  }

  late final Map<String, bool> _validateMap = {
    "street": street.validate(),
    "district": district.validate(),
    "number": number.validate(),
    "city": city.validate(),
  };

  @override
  String toString() =>
      "AddresEntity(street:$street,district:$district,number:$number,city:$city)";
}
