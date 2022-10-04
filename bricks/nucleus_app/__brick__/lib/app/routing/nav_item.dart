import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'nav_item.freezed.dart';

@freezed
class NavItem with _$NavItem {
  const NavItem._();

  const factory NavItem.home() = NavItemHome;

  Page build(BuildContext context) => when(
        home: () => MaterialPage(
          key: const ValueKey('HomePage'),
          child: Container(),
        ),
      );
}
