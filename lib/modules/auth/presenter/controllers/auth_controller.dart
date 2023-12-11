import 'package:delivery_project_using_clean_code/modules/auth/adapter/user_adapter.dart';
import 'package:delivery_project_using_clean_code/modules/auth/domain/dto/user_dto.dart';
import 'package:delivery_project_using_clean_code/modules/auth/domain/usecase/check_if_user_exists.dart';
import 'package:delivery_project_using_clean_code/modules/auth/domain/usecase/sign_in.dart';
import 'package:delivery_project_using_clean_code/modules/auth/domain/usecase/sign_up.dart';
import 'package:delivery_project_using_clean_code/modules/auth/domain/vo/vo_email.dart';
import 'package:delivery_project_using_clean_code/modules/auth/domain/vo/vo_password.dart';
import 'package:delivery_project_using_clean_code/modules/auth/domain/vo/vo_text.dart';

class AuthController {
  final SignIn _signIn;
  final CheckIfUserExists _checkIfUserExists;
  final SignUp _signUp;

  AuthController(this._signIn, this._signUp, this._checkIfUserExists);

  Future<Map<String, dynamic>> signIn(dynamic data) async {
    final userDto = UserDto(
        username: VOText(data["username"]),
        email: VOEmail(data["email"]),
        password: VOPassword(data["password"]));

    final res = await _checkIfUserExists.call(userDto);

    if (res.isExistsUser == false && res.exception != null) {
      return {"message": res.exception?.messageError};
    }
    final (:user, :token, :exception) = await _signIn.call(userDto);
    if (exception != null) {
      return {"message": exception.messageError};
    }
    return {"token": token, "user": UserAdapter.toMap(user!)};
  }

  Future<Map<String, dynamic>> signUp(dynamic data) async {
    final userDto = UserDto(
        username: VOText(data["username"]),
        email: VOEmail(data["email"]),
        password: VOPassword(data["password"]));

    final res = await _checkIfUserExists.call(userDto);

    if (res.isExistsUser == true && res.exception != null) {
      return {
        "message": res.exception?.messageError,
        "label": res.exception?.label
      };
    }

    final (:user, :token, :exception) = await _signUp.call(userDto);
    if (exception != null) {
      return {
        "messageError": exception.messageError,
        "label": exception.label,
        "stackTrace": exception.stackTrace
      };
    }
    return {"token": token, "user": UserAdapter.toMap(user!)};
  }
}
