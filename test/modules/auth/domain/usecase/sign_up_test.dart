import 'package:delivery_project_using_clean_code/modules/auth/domain/dto/user_dto.dart';
import 'package:delivery_project_using_clean_code/modules/auth/domain/entities/user_entity.dart';
import 'package:delivery_project_using_clean_code/modules/auth/domain/errors/i_auth_exception.dart';
import 'package:delivery_project_using_clean_code/modules/auth/domain/repositories/i_auth_repository.dart';
import 'package:delivery_project_using_clean_code/modules/auth/domain/usecase/sign_up.dart';
import 'package:delivery_project_using_clean_code/modules/auth/domain/vo/vo_email.dart';
import 'package:delivery_project_using_clean_code/modules/auth/domain/vo/vo_password.dart';
import 'package:delivery_project_using_clean_code/modules/auth/domain/vo/vo_text.dart';
import 'package:mocktail/mocktail.dart';
import 'package:test/test.dart';

class MockAuthRepository extends Mock implements IAuthRepository {}

class FakeUserDto extends Fake implements UserDto {}

void main() {
  late final IAuthRepository repository;
  late final SignUp usecase;

  setUpAll(() {
    repository = MockAuthRepository();
    usecase = SignUp(repository);
    registerFallbackValue(FakeUserDto());
  });

  tearDownAll(() {
    reset(repository);
  });

  test('should make sign up and validate its values retuning true', () async {
    when(() => repository.signUp(any())).thenAnswer((_) async => (
          user: UserEntity(
              id: "dwwdw-adaddwdw",
              username: VOText("fulano"),
              email: VOEmail("fulano@fulano.com"),
              password: VOPassword("fulano123")),
          token: 'token',
          exception: null
        ));

    final (:user, :token, :exception) = await usecase.call(UserDto(
        username: VOText("fulano"),
        email: VOEmail("fulano@fulano.com"),
        password: VOPassword("fulano123")));

    expect(user?.validate(), isTrue);
    expect(token, "token");
    expect(exception, isNull);

    verify(() => repository.signUp(any())).called(1);
  });

  test('should make sign up and validate its values retuning false', () async {
    when(() => repository.signUp(any())).thenAnswer((_) async => (
          user: null,
          token: '',
          exception: InvalidSignUpException(
              messageError: "O email/senha está invalido", label: "label")
        ));

    final (:user, :token, :exception) = await usecase.call(UserDto(
        username: VOText(""),
        email: VOEmail("email.com"),
        password: VOPassword("fualano123")));
    expect(user, isNull);
    expect(token, "");
    expect(exception?.messageError, "O email/senha está invalido");

    verify(() => repository.signUp(any())).called(1);
  });
}
