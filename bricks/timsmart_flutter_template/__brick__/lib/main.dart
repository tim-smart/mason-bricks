import 'package:{{name}}/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter_nucleus/flutter_nucleus.dart';
import 'package:logging/logging.dart';

void main() async {
  Logger.root.level = Level.ALL;
  Logger.root.onRecord.listen((r) {
    // ignore: avoid_print
    print('${r.level.name}: ${r.loggerName}: ${r.time}: ${r.message}');
  });

  runApp(AtomScope(
    child: const {{#pascalCase}}{{name}}{{/pascalCase}}App(),
  ));
}
