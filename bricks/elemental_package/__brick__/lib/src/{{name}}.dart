import 'package:dio/dio.dart';
import 'package:elemental/elemental.dart';

class {{name.pascalCase()}} {
  const {{name.pascalCase()}}({
    required Dio dio,
  }) : _dio = dio;

  final Dio _dio;
}

final _makeDio = IO(Dio.new).acquireRelease((_) => IO(_.close).asUnit);

final {{name.camelCase()}}Layer = Layer.scoped(
  _makeDio.map((dio) => {{name.pascalCase()}}(dio: dio)),
);