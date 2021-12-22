import 'package:flutter/material.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:{{name}}/app_sections/app_section.dart';
import 'package:{{name}}/home/home_screen.dart';

part 'app_sections.g.dart';

@swidget
Widget appSections(
  BuildContext context, {
  required AppSection section,
}) =>
    section.when(
      home: () => const HomeScreen(),
    );
