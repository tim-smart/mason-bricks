import 'package:{{name}}/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_nucleus/flutter_nucleus.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';

part '{{name}}_app.g.dart';

@swidget
Widget _{{#camelCase}}{{name}}{{/camelCase}}App() =>
    AtomBuilder((context, watch, child) => MaterialApp.router(
          theme: ThemeData.light(),
          darkTheme: ThemeData.dark(),
          routeInformationParser: appRouterParser,
          routerDelegate: watch(routerDelegateAtom),
          localizationsDelegates: [
            ...GlobalMaterialLocalizations.delegates,
            intlDelegate(name: 'home_intl', builder: () => HomeIntl()),
          ],
          supportedLocales: const [Locale('en')],
        ));
