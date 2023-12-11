import 'package:delivery_project_using_clean_code/modules/auth/domain/dto/user_dto.dart';
import 'package:delivery_project_using_clean_code/modules/auth/domain/errors/i_auth_exception.dart';
import 'package:delivery_project_using_clean_code/modules/auth/domain/repositories/i_auth_repository.dart';

class CheckIfUserExists {
  final IAuthRepository _repository;
  CheckIfUserExists(this._repository);

  Future<({bool isExistsUser, IAuthException? exception})> call(
      UserDto userDto) async {
    return await _repository.ckeckIfTheUserExists(userDto);
  }
}
