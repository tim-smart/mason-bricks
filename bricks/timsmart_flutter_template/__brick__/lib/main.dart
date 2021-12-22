import 'package:flutter/material.dart';
import 'package:logging/logging.dart';
import 'package:persisted_bloc_stream/persisted_bloc_stream.dart';
import 'package:{{name}}/app/{{name}}_app.dart';

void main() async {
  Logger.root.level = Level.ALL;
  Logger.root.onRecord.listen((r) {
    // ignore: avoid_print
    print('${r.level.name}: ${r.loggerName}: ${r.time}: ${r.message}');
  });

  PersistedBlocStream.storage = await SharedPreferencesStorage.build();

  runApp(const {{#pascalCase}}{{name}}{{/pascalCase}}App());
}
