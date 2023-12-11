abstract class IValueObject<T> {
  T get value;
  set setValue(T newValue);
  bool validate();

  @override
  String toString() => "$value";
}
