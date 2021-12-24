import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:{{name}}/home/home_intl.dart';
import 'package:{{name}}/lib/intl.dart';
import 'package:{{name}}/app/routing/navigation_stack.dart' as navstack;
import 'package:{{name}}/app/routing/delegate.dart';

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
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      routeInformationParser: navstack.appRouterParser,
      routerDelegate: ref.watch(routerDelegateProvider),
      localizationsDelegates: [
        ...GlobalMaterialLocalizations.delegates,
        intlDelegate(name: 'home_intl', builder: () => HomeIntl()),
      ],
      supportedLocales: const [Locale('en')],
    );
