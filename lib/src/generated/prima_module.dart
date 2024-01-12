import 'package:delivery_project_using_clean_code/src/core/utils/dot_env_util.dart';
import 'package:delivery_project_using_clean_code/src/generated/prisma/prisma_client.dart';
import 'package:orm/logger.dart';
import 'package:shelf_modular/shelf_modular.dart';

class PrismaModule extends Module {
  @override
  List<Bind<Object>> get binds => [
        Bind.instance<PrismaClient>(
            PrismaClient(
                stdout: [Event.query, Event.info, Event.warn, Event.error],
                datasources: Datasources(db: DotEnvUtil.env["DATABASE_URL"])),
            export: true),
      ];
}
