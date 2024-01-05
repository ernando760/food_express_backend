import 'package:delivery_project_using_clean_code/modules/auth/domain/dto/user_dto.dart';
import 'package:delivery_project_using_clean_code/modules/auth/domain/entities/user_entity.dart';
import 'package:delivery_project_using_clean_code/modules/auth/domain/errors/i_auth_exception.dart';
import 'package:delivery_project_using_clean_code/modules/auth/domain/repositories/i_auth_repository.dart';

class SignUp {
  final IAuthRepository _repository;

  SignUp(this._repository);

  Future<({UserEntity? user, String token, IAuthException? exception})> call(
      UserDto userDto) async {
    if (userDto.validate()) return await _repository.signUp(userDto);

    return (
      user: null,
      token: '',
      exception: InvalidSignUpException(
          messageError: "O email/senha está invalido", label: "$runtimeType")
    );
  }
}
