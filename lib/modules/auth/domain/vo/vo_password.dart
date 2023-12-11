import 'package:bcrypt/bcrypt.dart';
import 'package:delivery_project_using_clean_code/modules/auth/domain/vo/vo_text.dart';

class VOPassword extends VOText {
  VOPassword(super.value);

  @override
  bool validate() {
    final res = super.validate();
    if (res && value.length >= 6) return true;

    return false;
  }

  String convert() => BCrypt.hashpw(value, BCrypt.gensalt());

  bool checkPassword(String hash) => BCrypt.checkpw(value, hash);

  @override
  String toString() => value;
}
