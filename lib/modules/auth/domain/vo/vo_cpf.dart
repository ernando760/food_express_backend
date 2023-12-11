import 'package:delivery_project_using_clean_code/modules/auth/domain/vo/vo_text.dart';

class VOCpf extends VOText {
  VOCpf(super.value);

  @override
  bool validate() {
    final res = super.validate();
    final regexCpf =
        RegExp(r"[0-9]{3}\.?[0-9]{3}\.?[0-9]{3}\-?[0-9]{2}").hasMatch(value);
    if (res && regexCpf) return true;

    return false;
  }

  @override
  String toString() => value;
}
