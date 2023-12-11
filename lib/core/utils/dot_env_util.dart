import 'package:dotenv/dotenv.dart';

class DotEnvUtil {
  static late final DotEnv _dotEnv;

  static void load() {
    _dotEnv = DotEnv(includePlatformEnvironment: true)..load();
  }

  static DotEnv get env => _dotEnv;
}
