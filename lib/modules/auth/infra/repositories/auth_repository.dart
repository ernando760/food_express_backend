// ignore_for_file: curly_braces_in_flow_control_structures
import 'package:dart_jsonwebtoken/dart_jsonwebtoken.dart';
import 'package:delivery_project_using_clean_code/core/utils/dot_env_util.dart';
import 'package:delivery_project_using_clean_code/modules/auth/adapter/user_adapter.dart';
import 'package:delivery_project_using_clean_code/modules/auth/domain/database/i_database.dart';
import 'package:delivery_project_using_clean_code/modules/auth/domain/dto/user_dto.dart';
import 'package:delivery_project_using_clean_code/modules/auth/domain/entities/user_entity.dart';
import 'package:delivery_project_using_clean_code/modules/auth/domain/errors/i_auth_exception.dart';
import 'package:delivery_project_using_clean_code/modules/auth/domain/errors/i_database_exception.dart';
import 'package:delivery_project_using_clean_code/modules/auth/domain/repositories/i_auth_repository.dart';

class AuthRepository extends IAuthRepository {
  final IDatabase _database;

  AuthRepository(this._database);

  @override
  Future<({IAuthException? exception, String token, UserEntity? user})> signIn(
      UserDto userDto) async {
    try {
      await _database.openDatabase();

      final rows = await _database
          .query("SELECT * FROM user_auth WHERE email = @email", {
        "email": userDto.email.value,
      });

      for (var row in rows) {
        final user = UserAdapter.fromJson(row, withPassword: false);
        final token = _generateAccessToken(user);
        return (user: user, token: token, exception: null);
      }

      return (
        user: null,
        token: "",
        exception: InvalidSignInException(
            messageError: "Error ao fazer o login",
            label: "$runtimeType-signIn")
      );
    } on OpenDatabaseException catch (e) {
      return (
        user: null,
        token: '',
        exception: InvalidSignInException(
          messageError: e.messageError,
          label: "$runtimeType-signIn => ${e.label}",
        )
      );
    } on QueryDatabaseException catch (e) {
      return (
        user: null,
        token: '',
        exception: InvalidSignInException(
            messageError: e.messageError,
            label: "$runtimeType-signIn => ${e.label}",
            stackTrace: e.stackTrace)
      );
    } on InvalidJWTException catch (e) {
      return (
        user: null,
        token: '',
        exception: InvalidSignUpException(
            messageError: e.messageError,
            label: "$runtimeType-signIn => ${e.label}",
            stackTrace: e.stackTrace)
      );
    } catch (e, s) {
      return (
        user: null,
        token: '',
        exception: InvalidSignInException(
            messageError: "Error ao fazer o login $e",
            label: "$runtimeType-signIn",
            stackTrace: s)
      );
    } finally {
      _database.closeDatabase();
    }
  }

  @override
  Future<({IAuthException? exception, String token, UserEntity? user})> signUp(
      UserDto userDto) async {
    try {
      await _database.openDatabase();

      final futures = await Future.value([
        await _database.execute(
            "INSERT INTO user_auth(username,email,password) VALUES(@username,@email,@password)",
            UserAdapter.toMap(userDto,
                withId: false, withPasswordConvert: true)),
        await _database.query("SELECT * FROM user_auth WHERE email = @email",
            {"email": userDto.email.value})
      ]);

      final rows = futures[1] as List<Map<dynamic, dynamic>>;
      for (var data in rows) {
        final newUser = UserAdapter.fromJson(data, withPassword: false);
        if (newUser.id != null) {
          final token = _generateAccessToken(newUser);
          return (user: newUser, token: token, exception: null);
        }
      }

      return (
        user: null,
        token: '',
        exception: InvalidSignUpException(
            messageError: "Error ao fazer o cadastro",
            label: "$runtimeType-signUp")
      );
    } on OpenDatabaseException catch (e) {
      return (
        user: null,
        token: '',
        exception:
            InvalidSignUpException(messageError: e.messageError, label: e.label)
      );
    } on QueryDatabaseException catch (e) {
      return (
        user: null,
        token: '',
        exception: InvalidSignInException(
          messageError: e.messageError,
          label: "$runtimeType-signIn => ${e.label}",
        )
      );
    } on InvalidJWTException catch (e) {
      return (
        user: null,
        token: '',
        exception: InvalidSignUpException(
            messageError: e.messageError,
            label: "$runtimeType-signUp => ${e.label}",
            stackTrace: e.stackTrace)
      );
    } catch (e, s) {
      return (
        user: null,
        token: '',
        exception: InvalidSignUpException(
            messageError: "Error ao fazer o cadastro: $e",
            label: "$runtimeType-signUp",
            stackTrace: s)
      );
    } finally {
      _database.closeDatabase();
    }
  }

  @override
  Future<({bool isExistsUser, IAuthException? exception})> ckeckIfTheUserExists(
      UserDto userDto) async {
    try {
      await _database.openDatabase();

      final rows = await _database
          .query("SELECT * FROM user_auth WHERE email = @email", {
        "email": userDto.email.value,
      });

      print("QUERY: $rows");

      if (rows.isNotEmpty) {
        final isValidPassword =
            userDto.password.checkPassword(rows[0]["password"]);
        if (isValidPassword)
          return (
            isExistsUser: true,
            exception: ExistingUserException(
                messageError: "Este usuario já existe, por favor faça o login",
                label: "$runtimeType-ckeckIfTheUserExists")
          );
      }

      return (
        isExistsUser: false,
        exception: InvalidSignInException(
            messageError: "usuario não cadastrado, por favor faça o cadastro",
            label: "$runtimeType-ckeckIfTheUserExists")
      );
    } on OpenDatabaseException catch (e) {
      return (
        isExistsUser: false,
        exception: ExistingUserException(
            messageError: e.label, label: "$runtimeType-ckeckIfTheUserExists")
      );
    } on QueryDatabaseException catch (e) {
      return (
        isExistsUser: false,
        exception: ExistingUserException(
          messageError: e.messageError,
          label: "$runtimeType-ckeckIfTheUserExists => ${e.label}",
        )
      );
    } catch (e, s) {
      return (
        isExistsUser: false,
        exception: ExistingUserException(
            messageError: "Error ao verificar se o usuario existe $e",
            label: "$runtimeType-ckeckIfTheUserExists",
            stackTrace: s)
      );
    } finally {
      _database.closeDatabase();
    }
  }

  @override
  Future<void> signOut() async {}

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

  String _generateAccessToken(UserEntity user) {
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
