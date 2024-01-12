// ignore_for_file: public_member_api_docs, sort_constructors_first, curly_braces_in_flow_control_structures
import '../dto/user_dto.dart';
import '../entities/user_entity.dart';
import '../errors/i_auth_exception.dart';
import '../repositories/i_auth_repository.dart';

class SignIn {
  final IAuthRepository _authRepository;

  SignIn(this._authRepository);

  Future<({UserEntity? user, String token, IAuthException? exception})> call(
      UserDto userDto) async {
    if (userDto.validateEmailAndPassword())
      return await _authRepository.signIn(userDto);

    return (
      user: null,
      token: '',
      exception: InvalidSignInException(
          messageError: "O email/senha está invalido", label: "$runtimeType")
    );
  }
}
