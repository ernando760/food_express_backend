import 'package:delivery_project_using_clean_code/modules/auth/domain/dto/user_dto.dart';
import 'package:delivery_project_using_clean_code/modules/auth/domain/entities/user_entity.dart';
import 'package:delivery_project_using_clean_code/modules/auth/domain/errors/i_auth_exception.dart';
import 'package:delivery_project_using_clean_code/modules/auth/domain/vo/vo_email.dart';
import 'package:delivery_project_using_clean_code/modules/auth/domain/vo/vo_password.dart';
import 'package:delivery_project_using_clean_code/modules/auth/domain/vo/vo_text.dart';
import 'package:delivery_project_using_clean_code/modules/auth/infra/repositories/auth_repository.dart';
import 'package:mocktail/mocktail.dart';
import 'package:test/test.dart';

class MockAuthRepository extends Mock implements AuthRepository {}

class FakeUserDto extends Fake implements UserDto {}

void main() {
  final repository = MockAuthRepository();

  setUpAll(() {
    registerFallbackValue(FakeUserDto());
  });

  group("Testing [signIn] method", () {
    test('Should return user and the token when signing in user', () async {
      when(() => repository.signIn(any())).thenAnswer((_) async => (
            user: UserEntity(
                id: "id",
                username: VOText("username"),
                email: VOEmail("testando@teste.com"),
                password: VOPassword("password")),
            token: 'token',
            exception: null
          ));
      final (:user, :token, :exception) = await repository.signIn(UserDto(
          username: VOText("username"),
          email: VOEmail("testando@teste.com"),
          password: VOPassword("password")));

      expect(user?.email.value, "testando@teste.com");
      expect(token, "token");
      expect(exception, isNull);

      verify(
        () => repository.signIn(any()),
      ).called(1);
    });
    test('Should return an exception when signing in user', () async {
      when(() => repository.signIn(any())).thenAnswer((_) async => (
            user: null,
            token: '',
            exception: InvalidSignInException(
                messageError: "Error ao fazer o login",
                label: "MockAuthRepository-signIn")
          ));
      final (:user, :token, :exception) = await repository.signIn(UserDto(
          username: VOText("username"),
          email: VOEmail(""),
          password: VOPassword("password")));

      expect(user, isNull);
      expect(token, "");
      expect(exception?.messageError, "Error ao fazer o login");

      verify(
        () => repository.signIn(any()),
      ).called(1);
    });
  });

  group("Testing [signUp] method", () {
    test('Should return the user and the token when registering', () async {
      when(() => repository.signUp(any())).thenAnswer((_) async => (
            user: UserEntity(
                id: "id",
                username: VOText("username"),
                email: VOEmail("testando@teste.com"),
                password: VOPassword("password")),
            token: 'token',
            exception: null
          ));
      final (:user, :token, :exception) = await repository.signUp(UserDto(
          username: VOText("username"),
          email: VOEmail("testando@teste.com"),
          password: VOPassword("password")));

      expect(user?.email.value, "testando@teste.com");
      expect(token, "token");
      expect(exception, isNull);

      verify(
        () => repository.signUp(any()),
      ).called(1);
    });

    test('Should return an exception when registering', () async {
      when(() => repository.signUp(any())).thenAnswer((_) async => (
            user: null,
            token: '',
            exception: InvalidSignUpException(
                messageError: "Error ao fazer o cadastro",
                label: "MockAuthRepository-signUp")
          ));
      final (:user, :token, :exception) = await repository.signUp(UserDto(
          username: VOText("username"),
          email: VOEmail(""),
          password: VOPassword("password")));

      expect(user, isNull);
      expect(token, "");
      expect(exception?.messageError, "Error ao fazer o cadastro");

      verify(
        () => repository.signUp(any()),
      ).called(1);
    });
  });

  group("Testing [checkIfUserExists] method", () {
    test("Should return true when the user's existing", () async {
      when(() => repository.ckeckIfTheUserExists(any()))
          .thenAnswer((_) async => (
                isExistsUser: true,
                exception: ExistingUserException(
                    messageError:
                        "Este usuario já existe, por favor faça o login",
                    label: "MockAuthRepository-checkIfUserExist")
              ));

      final (:isExistsUser, :exception) = await repository.ckeckIfTheUserExists(
          UserDto(
              username: VOText("username"),
              email: VOEmail("testando@teste.com"),
              password: VOPassword("password")));

      expect(isExistsUser, isTrue);
      expect(exception?.messageError,
          "Este usuario já existe, por favor faça o login");
    });
    test("Should return false when the user doesn't exist", () async {
      when(() => repository.ckeckIfTheUserExists(any()))
          .thenAnswer((_) async => (
                isExistsUser: false,
                exception: ExistingUserException(
                    messageError:
                        "usuario não cadastrado, por favor faça o cadastro",
                    label: "MockAuthRepository-checkIfUserExist")
              ));

      final (:isExistsUser, :exception) = await repository.ckeckIfTheUserExists(
          UserDto(
              username: VOText("username"),
              email: VOEmail("testando@teste.com"),
              password: VOPassword("password")));

      expect(isExistsUser, isFalse);
      expect(exception?.messageError,
          "usuario não cadastrado, por favor faça o cadastro");
    });
  });
}
