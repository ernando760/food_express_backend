import 'package:delivery_project_using_clean_code/core/extensions/json_response_extension.dart';
import 'package:delivery_project_using_clean_code/modules/auth/adapter/user_adapter.dart';
import 'package:delivery_project_using_clean_code/modules/auth/domain/dto/user_dto.dart';
import 'package:delivery_project_using_clean_code/modules/auth/domain/usecase/check_if_user_exists.dart';
import 'package:delivery_project_using_clean_code/modules/auth/domain/usecase/sign_in.dart';
import 'package:delivery_project_using_clean_code/modules/auth/domain/usecase/sign_up.dart';
import 'package:delivery_project_using_clean_code/modules/auth/domain/vo/vo_email.dart';
import 'package:delivery_project_using_clean_code/modules/auth/domain/vo/vo_password.dart';
import 'package:delivery_project_using_clean_code/modules/auth/domain/vo/vo_text.dart';
import 'package:shelf/shelf.dart';

class AuthController {
  final SignIn _signIn;
  final CheckIfUserExists _checkIfUserExists;
  final SignUp _signUp;

  AuthController(this._signIn, this._signUp, this._checkIfUserExists);

  Future<Response> signIn(dynamic data) async {
    final userDto = UserDto(
        username: VOText(""),
        email: VOEmail(data["email"]),
        password: VOPassword(data["password"]));

    final res = await _checkIfUserExists.call(userDto);

    if (res.isExistsUser == false && res.exception != null) {
      return Response(401).json({"message": res.exception?.messageError});
    }
    final (:user, :token, :exception) = await _signIn.call(userDto);
    if (exception != null) {
      return Response(401).json({"message": exception.messageError});
    }
    return Response(200)
        .json({"token": token, "user": UserAdapter.toMap(user!)});
  }

  Future<Response> signUp(dynamic data) async {
    final userDto = UserDto(
        username: VOText(data["username"]),
        email: VOEmail(data["email"]),
        password: VOPassword(data["password"]));

    final res = await _checkIfUserExists.call(userDto);

    if (res.isExistsUser == true && res.exception != null) {
      return Response(401).json({
        "message": res.exception?.messageError,
      });
    }

    final (:user, :token, :exception) = await _signUp.call(userDto);
    if (exception != null) {
      return Response(401).json({
        "message": exception.messageError,
      });
    }
    return Response(200)
        .json({"token": token, "user": UserAdapter.toMap(user!)});
  }
}
