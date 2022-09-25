import 'package:{{name}}/index.dart';
import 'package:flutter/material.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';

part 'screen.g.dart';

@swidget
Widget _homeScreen(BuildContext context) {
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
