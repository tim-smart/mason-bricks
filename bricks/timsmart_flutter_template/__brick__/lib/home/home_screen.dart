import 'package:flutter/material.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:{{name}}/home/home_intl.dart';
import 'package:{{name}}/shared/app_scaffold/app_scaffold.dart';

part 'home_screen.g.dart';

@swidget
Widget homeScreen(BuildContext context) {
  final t = HomeIntl.of(context);

  return AppSliverScaffold(
    title: t.title,
    slivers: [
      SliverFillRemaining(
        child: Center(
          child: Text(t.body),
        ),
      ),
    ],
  );
}
