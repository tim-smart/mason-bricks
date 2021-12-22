import 'package:flutter/material.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';

part 'app_scaffold.g.dart';

@swidget
Widget appScaffold({
  required String title,
  required Widget body,
}) =>
    Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: body,
    );

@swidget
Widget appSliverScaffold({
  required String title,
  required List<Widget> slivers,
}) =>
    Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            title: Text(title),
          ),
          ...slivers,
        ],
      ),
    );
