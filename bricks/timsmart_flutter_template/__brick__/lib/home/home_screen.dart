import 'package:flutter/material.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:{{name}}/shared/app_scaffold/app_scaffold.dart';

part 'home_screen.g.dart';

@swidget
Widget homeScreen() => const AppSliverScaffold(
      title: 'Home',
      slivers: [
        SliverFillRemaining(
          child: Center(
            child: Text('Home screen'),
          ),
        ),
      ],
    );
