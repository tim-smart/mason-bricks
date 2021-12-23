import 'package:flutter/material.dart';
import 'package:flutter_jimtl/flutter_jimtl.dart';
import 'package:intl/intl.dart';

@GenerateArb(dir: 'assets/arb')
class HomeIntl {
  static HomeIntl of(BuildContext context) =>
      Localizations.of<HomeIntl>(context, HomeIntl) ?? HomeIntl();

  String get title => Intl.message(
        'Home',
        name: 'title',
      );

  String get body => Intl.message(
        'Home screen',
        name: 'body',
      );
}
