import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_section.freezed.dart';

@freezed
class AppSection with _$AppSection {
  AppSection._();

  factory AppSection.home() = HomeAppSection;

  late final String id = when(
    home: () => 'home',
  );

  static final Map<String, AppSection> _idMap = {
    'home': AppSection.home(),
  };
  static AppSection fromId(String id) => _idMap[id] ?? AppSection.home();

  late final String title = when(
    home: () => 'Home',
  );

  late final IconData icon = when(
    home: () => Icons.home,
  );
}
