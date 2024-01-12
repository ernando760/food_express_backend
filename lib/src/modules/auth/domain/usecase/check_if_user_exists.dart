import '../dto/user_dto.dart';
import '../errors/i_auth_exception.dart';
import '../repositories/i_auth_repository.dart';

class CheckIfUserExists {
  final IAuthRepository _repository;
  CheckIfUserExists(this._repository);

  Future<({bool isExistsUser, IAuthException? exception})> call(
      UserDto userDto) async {
    return await _repository.ckeckIfTheUserExists(userDto);
  }
}
