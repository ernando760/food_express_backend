import 'package:delivery_project_using_clean_code/modules/auth/domain/entities/user_entity.dart';
import 'package:delivery_project_using_clean_code/modules/auth/domain/vo/vo_email.dart';
import 'package:delivery_project_using_clean_code/modules/auth/domain/vo/vo_password.dart';
import 'package:delivery_project_using_clean_code/modules/auth/domain/vo/vo_text.dart';

class UserAdapter {
  static UserEntity fromJson(dynamic data,
          {bool withPassword = true, bool withId = true}) =>
      UserEntity(
          id: withId ? data["id"] : null,
          username: VOText(data["username"]),
          email: VOEmail(data["email"]),
          password:
              withPassword ? VOPassword(data["password"]) : VOPassword(""));

  static Map<String, dynamic> toMap(UserEntity user,
          {bool withPassword = true,
          bool withId = true,
          bool withPasswordConvert = false}) =>
      {
        "id": withId ? user.id : null,
        "username": user.username.value,
        "email": user.email.value,
        "password": withPassword
            ? withPasswordConvert
                ? user.password.convert()
                : user.password.value
            : ""
      };
}
