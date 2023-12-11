import 'dart:convert';

import 'package:shelf/shelf.dart';

extension JsonResponseExtension on Response {
  Response json(Map<dynamic, dynamic> json) {
    final jsonString = jsonEncode(json);
    return change(
        headers: {"Content-Type": "application/json"}, body: jsonString);
  }
}
