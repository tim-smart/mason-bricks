import 'package:dio/dio.dart';
import 'package:elemental/elemental.dart';

class {{#pascalCase}}{{name}}{{/pascalCase}} {
  const {{#pascalCase}}{{name}}{{/pascalCase}}({
    required Dio dio,
  }) : _dio = dio;

  final Dio _dio;
}

final _makeDio = IO(Dio.new).acquireRelease((_) => IO(_.close).asUnit);

final {{#camelCase}}{{name}}{{/camelCase}}Layer = Layer.scoped(
  _makeDio.map((dio) => {{#pascalCase}}{{name}}{{/pascalCase}(dio: dio)),
);