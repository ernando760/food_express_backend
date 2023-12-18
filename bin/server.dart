import 'package:delivery_project_using_clean_code/core/utils/dot_env_util.dart';
import 'package:delivery_project_using_clean_code/modules/app_module.dart';
import 'package:shelf/shelf.dart';
import 'package:shelf/shelf_io.dart' as io;
import 'package:shelf_modular/shelf_modular.dart';

void main(List<String> arguments) async {
  DotEnvUtil.load();

  final address = DotEnvUtil.env["ADDRESS"] ?? "0.0.0.0";
  final port = int.parse(DotEnvUtil.env["PORT"] ?? "8080");
  final modularHandler =
      Modular(module: AppModule(), middlewares: [logRequests()]);

  final server = await io.serve(modularHandler, address, port);
  print('Server started: ${server.address.address}:${server.port}');
}
