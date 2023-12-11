import 'package:delivery_project_using_clean_code/modules/auth/domain/entities/user_entity.dart';

import 'package:delivery_project_using_clean_code/modules/auth/domain/vo/vo_email.dart';

import 'package:delivery_project_using_clean_code/modules/auth/domain/vo/vo_password.dart';
import 'package:delivery_project_using_clean_code/modules/auth/domain/vo/vo_text.dart';

import 'package:test/test.dart';

void main() {
  test('should create an user entity and validate its values returning true',
      () async {
    final user = UserEntity(
      id: "id",
      username: VOText("username"),
      email: VOEmail("email"),
      password: VOPassword("password"),
    );

    final isValidate = user.validate();

    expect(isValidate, isTrue);
  });
}
