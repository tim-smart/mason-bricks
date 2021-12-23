import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:navigation_stack/navigation_stack.dart';

part 'app_section.freezed.dart';

final appSectionRouter = NavigationStackRouter<AppSection>(
  seperator: '_',
  seperatorOptional: true,
  defaultItem: const AppSection.home(),
  routes: const [
    NavigationStackRoute(
      key: 'home',
      fallback: AppSection.home(),
    ),
  ],
);

@freezed
class AppSection with _$AppSection {
  const AppSection._();
  const factory AppSection.home() = HomeAppSection;

  String get title => when(
        home: () => 'Home',
      );

  IconData get icon => when(
        home: () => Icons.home,
      );
}
