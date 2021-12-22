import 'package:flutter/material.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:{{name}}/routing/navigation_stack.dart' as navstack;
import 'package:{{name}}/routing/delegate.dart';

part '{{name}}_app.g.dart';

@swidget
Widget {{#camelCase}}{{name}}{{/camelCase}}App({
  List<Override> overrides = const [],
}) =>
    ProviderScope(
      overrides: overrides,
      child: const _App(),
    );


@cwidget
Widget _app(BuildContext context, WidgetRef ref) => MaterialApp.router(
    themeMode: ThemeMode.light,
    routeInformationParser: ref.watch(navstack.parserProvider),
    routerDelegate: ref.watch(routerDelegateProvider),
    builder: (context, child) => Theme(
        data: ThemeData.light(),
        child: child!,
      ),
  );
