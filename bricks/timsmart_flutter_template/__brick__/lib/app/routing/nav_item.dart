import 'package:{{name}}/index.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'nav_item.freezed.dart';

@freezed
class NavItem with _$NavItem {
  const NavItem._();

  const factory NavItem.appSection(AppSection section) = NavItemAppSection;

  Page build(BuildContext context) => when(
        appSection: (section) => _page(
          context,
          key: 'AppSectionsPage',
          title: section.title,
          child: AppSections(section: section),
        ),
      );
}

Page _page(
  BuildContext context, {
  required String key,
  required Widget child,
  String? title,
}) =>
    Theme.of(context).platform == TargetPlatform.iOS
        ? CupertinoPage(
            key: ValueKey(key),
            title: title,
            child: child,
          )
        : MaterialPage(
            key: ValueKey(key),
            child: child,
          );
