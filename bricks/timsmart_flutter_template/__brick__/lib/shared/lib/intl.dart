import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_jimtl/flutter_jimtl.dart';

const _defaultLocales = [Locale('en')];

LocalizationsDelegate<T> intlDelegate<T>({
  required String name,
  required T Function() builder,
  List<Locale> extraLocales = const [],
}) =>
    TranslationsDelegate<T>(
      defaultLocale: _defaultLocales.first,
      supportedLocales: [..._defaultLocales, ...extraLocales],
      dataLoader: (locale, flavor) =>
          rootBundle.loadString('assets/arb/${name}_$locale.arb'),
      translationsBuilder: builder,
    );
