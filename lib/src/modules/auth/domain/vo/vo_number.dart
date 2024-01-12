import 'i_value_object.dart';

class VONumber extends IValueObject<int> {
  int _value;

  VONumber(this._value);

  @override
  bool validate() {
    if (value == 0) {
      return false;
    }
    return true;
  }

  @override
  set setValue(int newValue) => _value = newValue;

  @override
  int get value => _value;
  @override
  String toString() => "$value";
}
