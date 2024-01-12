// ignore_for_file: curly_braces_in_flow_control_structures
import 'package:delivery_project_using_clean_code/src/generated/prisma/prisma_client.dart';
import 'package:orm/orm.dart';

import '../../adapter/user_adapter.dart';
import '../../domain/dto/user_dto.dart';
import '../../domain/entities/user_entity.dart';
import '../../domain/errors/i_auth_exception.dart';
import '../../domain/repositories/i_auth_repository.dart';
import '../../helper/jwt_helper.dart';

class AuthRepository extends IAuthRepository with JwtHelper {
  final PrismaClient _prismaClient;

  AuthRepository(this._prismaClient);

  @override
  Future<({IAuthException? exception, bool isExistsUser})> ckeckIfTheUserExists(
      UserDto userDto) async {
    try {
      await _prismaClient.$connect();
      final user = await _prismaClient.user
          .findUnique(where: UserWhereUniqueInput(email: userDto.email.value));
      if (user != null) {
        return (isExistsUser: true, exception: null);
      }
      return (isExistsUser: false, exception: null);
    } on PrismaException catch (e, s) {
      return (
        isExistsUser: false,
        exception: ExistingUserException(
            messageError: e.message,
            label: '$runtimeType-ckeckIfTheUserExists',
            stackTrace: s)
      );
    } catch (e, s) {
      return (
        isExistsUser: false,
        exception: ExistingUserException(
            messageError: "Error ao verificar se o usuario existe => $e",
            label: '$runtimeType-ckeckIfTheUserExists',
            stackTrace: s)
      );
    } finally {
      await _prismaClient.$disconnect();
    }
  }

  @override
  Future<({IAuthException? exception, String token, UserEntity? user})> signIn(
      UserDto userDto) async {
    try {
      await _prismaClient.$connect();

      final (:isExistsUser, :exception) = await ckeckIfTheUserExists(userDto);

      if (exception != null) {
        return (
          user: null,
          token: "",
          exception: InvalidSignInException(
              messageError: exception.messageError,
              label: '$runtimeType-signIn => ${exception.label}',
              stackTrace: exception.stackTrace)
        );
      }

      if (isExistsUser) {
        final user = await _prismaClient.user.findUnique(
            where: UserWhereUniqueInput(email: userDto.email.value));
        final userEntity =
            UserAdapter.fromJson(user!.toJson(), withPassword: false);
        final token = generateAccessToken(
          userEntity,
        );
        return (user: userEntity, token: token, exception: null);
      }

      return (
        user: null,
        token: "",
        exception: InvalidSignInException(
          messageError: "Não foi possivel fazer o login",
          label: '$runtimeType-signIn',
        )
      );
    } on PrismaException catch (e, s) {
      return (
        user: null,
        token: "",
        exception: InvalidSignInException(
            messageError: e.message,
            label: '$runtimeType-signIn',
            stackTrace: s)
      );
    } catch (e, s) {
      return (
        user: null,
        token: "",
        exception: InvalidSignInException(
            messageError: "Error ao fazer o login => $e",
            label: '$runtimeType-signIn',
            stackTrace: s)
      );
    } finally {
      await _prismaClient.$disconnect();
    }
  }

  @override
  Future<({IAuthException? exception, String token, UserEntity? user})> signUp(
      UserDto userDto) async {
    try {
      await _prismaClient.$connect();

      final (:isExistsUser, :exception) = await ckeckIfTheUserExists(userDto);

      if (exception != null) {
        return (
          user: null,
          token: "",
          exception: InvalidSignUpException(
              messageError: exception.messageError,
              label: '$runtimeType-signUp => ${exception.label}',
              stackTrace: exception.stackTrace)
        );
      }

      if (!isExistsUser) {
        final user = await _prismaClient.user.create(
            data: UserCreateInput(
                username: userDto.username.value,
                email: userDto.email.value,
                password: userDto.password.convert()));
        final userEntity =
            UserAdapter.fromJson(user.toJson(), withPassword: false);
        final token = generateAccessToken(userEntity);
        return (user: userEntity, token: token, exception: null);
      }

      return (
        user: null,
        token: "",
        exception: InvalidSignUpException(
          messageError: "Não foi possivel fazer o cadastro",
          label: '$runtimeType-signUp',
        )
      );
    } on PrismaException catch (e, s) {
      return (
        user: null,
        token: "",
        exception: InvalidSignUpException(
            messageError: e.message,
            label: '$runtimeType-signUp',
            stackTrace: s)
      );
    } catch (e, s) {
      return (
        user: null,
        token: "",
        exception: InvalidSignUpException(
            messageError: "Error ao fazer o cadastro => $e",
            label: '$runtimeType-signUp',
            stackTrace: s)
      );
    } finally {
      await _prismaClient.$disconnect();
    }
  }

  @override
  Future<void> signOut() async {}
}
