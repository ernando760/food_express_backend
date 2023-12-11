import 'package:delivery_project_using_clean_code/modules/auth/domain/dto/user_dto.dart';
import 'package:delivery_project_using_clean_code/modules/auth/domain/entities/user_entity.dart';
import 'package:delivery_project_using_clean_code/modules/auth/domain/errors/i_auth_exception.dart';

abstract class IAuthRepository {
  Future<({UserEntity? user, String token, IAuthException? exception})> signIn(
      UserDto userDto);
  Future<({UserEntity? user, String token, IAuthException? exception})> signUp(
      UserDto userDto);
  Future<({bool isExistsUser, IAuthException? exception})> ckeckIfTheUserExists(
      UserDto userDto);
  Future<void> signOut();
}
