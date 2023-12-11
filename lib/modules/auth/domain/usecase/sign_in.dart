// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:delivery_project_using_clean_code/modules/auth/domain/dto/user_dto.dart';
import 'package:delivery_project_using_clean_code/modules/auth/domain/entities/user_entity.dart';
import 'package:delivery_project_using_clean_code/modules/auth/domain/errors/i_auth_exception.dart';
import 'package:delivery_project_using_clean_code/modules/auth/domain/repositories/i_auth_repository.dart';

class SignIn {
  final IAuthRepository _authRepository;

  SignIn(this._authRepository);

  Future<({UserEntity? user, String token, IAuthException? exception})> call(
      UserDto userDto) async {
    if (userDto.validate()) return await _authRepository.signIn(userDto);

    return (
      user: null,
      token: '',
      exception: InvalidSignInException(
          messageError: "O email/senha está invalido", label: "$runtimeType")
    );
  }
}
