import '../entities/user_entity.dart';

class UserDto extends UserEntity {
  UserDto(
      {required super.username, required super.email, required super.password});
}
