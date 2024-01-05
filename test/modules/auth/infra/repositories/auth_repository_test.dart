import 'package:delivery_project_using_clean_code/core/utils/dot_env_util.dart';
import 'package:delivery_project_using_clean_code/modules/auth/domain/database/i_database.dart';
import 'package:delivery_project_using_clean_code/modules/auth/domain/dto/user_dto.dart';
import 'package:delivery_project_using_clean_code/modules/auth/domain/vo/vo_email.dart';
import 'package:delivery_project_using_clean_code/modules/auth/domain/vo/vo_password.dart';
import 'package:delivery_project_using_clean_code/modules/auth/domain/vo/vo_text.dart';
import 'package:delivery_project_using_clean_code/modules/auth/infra/repositories/auth_repository.dart';

import 'package:mocktail/mocktail.dart';
import 'package:test/test.dart';

class MockDatabase extends Mock implements IDatabase {
  @override
  Future<void> openDatabase() async {}
}

void main() {
  DotEnvUtil.load();
  late final IDatabase database;
  late final AuthRepository repository;

  setUpAll(() {
    database = MockDatabase();
    repository = AuthRepository(database);
  });

  tearDownAll(() {
    reset(MockDatabase());
  });
  group("Testing [signIn] method", () {
    test('Should return user and the token when signing in user', () async {
      when(() => database.query(any(), any())).thenAnswer((_) async => [
            {
              "id": "222dwd-0dwd11",
              "username": "fulano",
              "email": "fulano@fulano.com",
              "password": "fulano123"
            }
          ]);
      final (:user, :token, :exception) = await repository.signIn(UserDto(
          username: VOText(""),
          email: VOEmail("fulano@fulano.com"),
          password: VOPassword("fulano123")));

      expect(user?.email.value, "fulano@fulano.com");
      print(token);
      expect(exception, isNull);

      verify(
        () => database.query(any(), any()),
      ).called(1);
    });
    test('Should return an exception when signing in user', () async {
      when(() => database.query(any(), any())).thenAnswer((_) async => []);
      final (:user, :token, :exception) = await repository.signIn(UserDto(
          username: VOText("username"),
          email: VOEmail("fulano@fulano.com"),
          password: VOPassword("password")));

      expect(user, isNull);
      expect(token, "");
      expect(exception?.messageError, "Error ao fazer o login");

      verify(() => database.query(any(), any())).called(1);
    });
  });

  group("Testing [signUp] method", () {
    test('Should return the user and the token when registering', () async {
      when(() => database.query(any(), any())).thenAnswer((_) async => [
            {
              "id": "222dwd-0dwd11",
              "username": "fulano",
              "email": "fulano@fulano.com",
              "password": "fulano123"
            }
          ]);
      final (:user, :token, :exception) = await repository.signUp(UserDto(
          username: VOText("fulano"),
          email: VOEmail("fulano@fulano.com"),
          password: VOPassword("fulano123")));

      expect(user?.email.value, "fulano@fulano.com");
      print(token);
      expect(exception, isNull);

      verify(() => database.query(any(), any())).called(1);
    });

    test('Should return an exception when registering', () async {
      when(() => database.query(any(), any())).thenAnswer((_) async => []);
      final (:user, :token, :exception) = await repository.signUp(UserDto(
          username: VOText("fulano"),
          email: VOEmail("fulano@fulano.com"),
          password: VOPassword("fulano123")));

      expect(user, isNull);
      expect(token, "");
      expect(exception?.messageError, "Error ao fazer o cadastro");

      verify(
        () => database.query(any(), any()),
      ).called(1);
    });
  });

  group("Testing [checkIfUserExists] method", () {
    test("Should return true when the user's existing", () async {
      final passwordSalt = VOPassword("fulano123").convert();
      when(() => database.query(any(), any())).thenAnswer((_) async => [
            {
              "id": "222dwd-0dwd11",
              "username": "fulano",
              "email": "fulano@fulano.com",
              "password": passwordSalt
            }
          ]);

      final (:isExistsUser, :exception) = await repository.ckeckIfTheUserExists(
          UserDto(
              username: VOText("fulano"),
              email: VOEmail("fulano@fulano.com"),
              password: VOPassword("fulano123")));

      expect(isExistsUser, isTrue);
      expect(exception?.messageError,
          "Este usuario já existe, por favor faça o login");
      verify(() => database.query(any(), any())).called(1);
    });
    test("Should return false when the user doesn't exist", () async {
      when(() => database.query(any(), any())).thenAnswer((_) async => []);

      final (:isExistsUser, :exception) = await repository.ckeckIfTheUserExists(
          UserDto(
              username: VOText("fulano"),
              email: VOEmail("fulano@fulano.com"),
              password: VOPassword("fulano123")));

      expect(isExistsUser, isFalse);
      expect(exception?.messageError,
          "usuario não cadastrado, por favor faça o cadastro");
      verify(() => database.query(any(), any())).called(1);
    });
  });
}
