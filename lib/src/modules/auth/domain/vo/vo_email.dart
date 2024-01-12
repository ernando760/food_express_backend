// ignore_for_file: curly_braces_in_flow_control_structures

import 'vo_text.dart';

class VOEmail extends VOText {
  VOEmail(super.value);

  @override
  bool validate() {
    final res = super.validate();

    if (res && RegExp(r"^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$").hasMatch(value))
      return true;

    return false;
  }

  @override
  String toString() => value;
}
