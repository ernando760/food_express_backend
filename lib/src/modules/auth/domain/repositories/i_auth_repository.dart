import '../dto/user_dto.dart';
import '../entities/user_entity.dart';
import '../errors/i_auth_exception.dart';

abstract class IAuthRepository {
  Future<({UserEntity? user, String token, IAuthException? exception})> signIn(
      UserDto userDto);
  Future<({UserEntity? user, String token, IAuthException? exception})> signUp(
      UserDto userDto);
  Future<({bool isExistsUser, IAuthException? exception})> ckeckIfTheUserExists(
      UserDto userDto);
  Future<void> signOut();
}
