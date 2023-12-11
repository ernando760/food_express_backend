import 'package:delivery_project_using_clean_code/modules/auth/domain/entities/i_entity.dart';
import 'package:delivery_project_using_clean_code/modules/auth/domain/vo/vo_text.dart';

import '../vo/vo_email.dart';
import '../vo/vo_password.dart';

class UserEntity extends IEntity<String> {
  final VOText username;
  final VOEmail email;
  final VOPassword password;

  UserEntity({
    super.id,
    required this.username,
    required this.email,
    required this.password,
  });

  bool validate() {
    final isValidateUser =
        _validateMap.values.reduce((value, element) => value == element);
    if (isValidateUser) return true;
    return false;
  }

  late final Map<String, bool> _validateMap = {
    "username": username.validate(),
    "email": email.validate(),
    "password": password.validate(),
  };

  @override
  String toString() =>
      "UserEntity(id:$id,username:$username,email:$email,password:$password)";
}
