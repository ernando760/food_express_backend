import 'package:delivery_project_using_clean_code/modules/auth/domain/entities/user_entity.dart';

class UserDto extends UserEntity {
  UserDto(
      {required super.username, required super.email, required super.password});
}
