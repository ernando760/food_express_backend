import 'package:delivery_project_using_clean_code/modules/auth/domain/dto/user_dto.dart';
import 'package:delivery_project_using_clean_code/modules/auth/domain/entities/user_entity.dart';
import 'package:delivery_project_using_clean_code/modules/auth/domain/errors/i_auth_exception.dart';
import 'package:delivery_project_using_clean_code/modules/auth/domain/usecase/sign_in.dart';
import 'package:delivery_project_using_clean_code/modules/auth/domain/vo/vo_email.dart';
import 'package:delivery_project_using_clean_code/modules/auth/domain/vo/vo_password.dart';
import 'package:delivery_project_using_clean_code/modules/auth/domain/vo/vo_text.dart';
import 'package:mocktail/mocktail.dart';
import 'package:test/test.dart';

class MockSignIn extends Mock implements SignIn {}

class FakeUserDto extends Fake implements UserDto {}

void main() {
  final usecase = MockSignIn();

  setUpAll(() {
    registerFallbackValue(FakeUserDto());
  });
  test('should make sign in and validate its values retuning true', () async {
    when(() => usecase.call(any())).thenAnswer((_) async => (
          user: UserEntity(
              username: VOText("username"),
              email: VOEmail("email@gmail.com"),
              password: VOPassword("password123")),
          token: "token",
          exception: null
        ));

    final (:user, :token, :exception) = await usecase.call(UserDto(
        username: VOText("username"),
        email: VOEmail("email@gmail.com"),
        password: VOPassword("password123")));

    expect(user?.validate(), isTrue);
    expect(token, "token");
    expect(exception, isNull);

    verify(
      () => usecase.call(any()),
    ).called(1);
  });

  test('should make sign in and validate its values retuning false', () async {
    when(() => usecase.call(any())).thenAnswer((_) async => (
          user: null,
          token: "",
          exception: InvalidSignInException(
              messageError: "O login está invalido", label: "MockSignInUseCase")
        ));

    final (:user, :token, :exception) = await usecase.call(UserDto(
        username: VOText(""),
        email: VOEmail("email.com"),
        password: VOPassword("password123")));
    expect(user, isNull);
    expect(token, "");
    expect(exception?.messageError, "O login está invalido");

    verify(
      () => usecase.call(any()),
    ).called(1);
  });
}
