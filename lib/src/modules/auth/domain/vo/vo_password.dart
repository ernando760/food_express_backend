import 'package:bcrypt/bcrypt.dart';

import 'vo_text.dart';

class VOPassword extends VOText {
  VOPassword(super.value);

  @override
  bool validate() {
    final res = super.validate();
    if (res && value.length >= 6) return true;

    return false;
  }

  String convert() =>
      value.isNotEmpty ? BCrypt.hashpw(value, BCrypt.gensalt()) : "";

  bool checkPassword(String hash) =>
      hash.isNotEmpty ? BCrypt.checkpw(value, hash) : false;

  @override
  String toString() => value;
}
