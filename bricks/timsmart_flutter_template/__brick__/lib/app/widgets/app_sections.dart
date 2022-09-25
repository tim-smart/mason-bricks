import 'package:{{name}}/index.dart';
import 'package:flutter/material.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';

part 'app_sections.g.dart';

@swidget
Widget appSections(
  BuildContext context, {
  required AppSection section,
}) =>
    section.screen;
