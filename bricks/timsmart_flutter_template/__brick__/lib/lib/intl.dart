import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_jimtl/flutter_jimtl.dart';

LocalizationsDelegate<T> intlDelegate<T>({
  required String name,
  required T Function() builder,
  List<Locale> extraLocales = const [],
}) =>
    TranslationsDelegate<T>(
      defaultLocale: const Locale('en'),
      supportedLocales: [const Locale('en'), ...extraLocales],
      dataLoader: (locale, flavor) =>
          rootBundle.loadString('assets/arb/${name}_$locale.arb'),
      translationsBuilder: builder,
    );
