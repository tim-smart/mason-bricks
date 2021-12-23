import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:navigation_stack/navigation_stack.dart';
import 'package:{{name}}/app_sections/app_section.dart';
import 'package:{{name}}/app_sections/app_sections.dart';
import 'package:{{name}}/app/routing/navigation_stack.dart' as navstack;

final navigatorKeyProvider = Provider((_) => GlobalKey<NavigatorState>());
final routerDelegateProvider = Provider((ref) => NavigationStackDelegate(
      navigatorKey: ref.watch(navigatorKeyProvider),
      stack:
          ref.watch(navstack.provider.bloc) as NavigationStack<navstack.Item>,
      builder: (context, stack) => stack.map(_buildItem(context)).toList(),
    ));

Page Function(navstack.Item) _buildItem(BuildContext context) =>
    (item) => item.when(
          appSection: (id) {
            final section = AppSection.fromId(id);
            return _page(
              context,
              key: 'AppSectionsPage',
              title: section.title,
              child: AppSections(section: section),
            );
          },
        );

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
