import 'dart:async';

import 'package:delivery_project_using_clean_code/modules/auth/presenter/controllers/auth_controller.dart';
import 'package:shelf/shelf.dart';
import 'package:shelf_modular/shelf_modular.dart';

class AuthResource extends Resource {
  @override
  List<Route> get routes => [
        Route.post("/signin", _signIn),
        Route.post("/signup", _signUp),
      ];
  FutureOr<Response> _signIn(
      ModularArguments arguments, Injector i, Request request) async {
    final controller = i.get<AuthController>();

    final res = await controller.signIn(arguments.data);

    return res;
  }

  FutureOr<Response> _signUp(ModularArguments arguments, Injector i) async {
    final controller = i.get<AuthController>();

    final res = await controller.signUp(arguments.data);

    return res;
  }
}
