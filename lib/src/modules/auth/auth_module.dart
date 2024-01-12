import 'package:delivery_project_using_clean_code/src/generated/prisma/prisma_client.dart';
import 'package:delivery_project_using_clean_code/src/modules/auth/domain/repositories/i_auth_repository.dart';
import 'package:delivery_project_using_clean_code/src/modules/auth/domain/usecase/check_if_user_exists.dart';
import 'package:delivery_project_using_clean_code/src/modules/auth/domain/usecase/sign_in.dart';
import 'package:delivery_project_using_clean_code/src/modules/auth/domain/usecase/sign_up.dart';
import 'package:delivery_project_using_clean_code/src/modules/auth/infra/repositories/auth_repository.dart';
import 'package:delivery_project_using_clean_code/src/modules/auth/presenter/controllers/auth_controller.dart';
import 'package:delivery_project_using_clean_code/src/modules/auth/presenter/resources/auth_resource.dart';
import 'package:shelf_modular/shelf_modular.dart';

class AuthModule extends Module {
  @override
  List<Bind<Object>> get binds => [
        Bind.singleton<IAuthRepository>(
            (i) => AuthRepository(i<PrismaClient>())),
        Bind.singleton<CheckIfUserExists>(
            (i) => CheckIfUserExists(i<IAuthRepository>())),
        Bind.singleton<SignIn>((i) => SignIn(i<IAuthRepository>())),
        Bind.singleton<SignUp>((i) => SignUp(i<IAuthRepository>())),
        Bind.singleton<AuthController>((i) =>
            AuthController(i<SignIn>(), i<SignUp>(), i<CheckIfUserExists>()))
      ];

  @override
  List<ModularRoute> get routes => [Route.resource(AuthResource())];
}
