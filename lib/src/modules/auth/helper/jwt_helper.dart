import 'package:dart_jsonwebtoken/dart_jsonwebtoken.dart';
import 'package:delivery_project_using_clean_code/src/core/utils/dot_env_util.dart';
import 'package:delivery_project_using_clean_code/src/modules/auth/domain/entities/user_entity.dart';
import 'package:delivery_project_using_clean_code/src/modules/auth/domain/errors/i_auth_exception.dart';

mixin JwtHelper {
  bool checkTokenIsValid(String token) {
    final jwtD = JWT.decode(token);
    DateTime expirationDate =
        DateTime.fromMillisecondsSinceEpoch(jwtD.payload['exp'] * 1000);
    print("EXPIRATION DATE: $expirationDate");
    if (expirationDate.isAfter(DateTime.now())) {
      return true;
    }
    return false;
  }

  String generateAccessToken(UserEntity user) {
    try {
      DateTime currentDate = DateTime.now();
      final iatTimestamp = currentDate.millisecondsSinceEpoch;

      final secretkey = SecretKey(DotEnvUtil.env["SECRET_KEY"]!);
      final duration = Duration(days: 1);

      final jwt = JWT({
        'sub': user.id,
        'name': user.username.value,
        'iat': iatTimestamp,
      }, header: {
        "alg": "HS256",
        "typ": "JWT"
      });
      final token = jwt.sign(secretkey, expiresIn: duration);

      return token;
    } on JWTException catch (e, s) {
      throw InvalidJWTException(
          messageError: e.message,
          label: "$runtimeType-generateAccessToken",
          stackTrace: s);
    }
  }
}
