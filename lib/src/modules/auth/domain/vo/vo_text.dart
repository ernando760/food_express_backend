import 'i_value_object.dart';

class VOText extends IValueObject<String> {
  String _value;

  VOText(this._value);

  @override
  bool validate() {
    if (_value.isNotEmpty) return true;
    return false;
  }

  @override
  set setValue(String newValue) => _value = newValue;

  @override
  String get value => _value;

  @override
  String toString() => value;
}
