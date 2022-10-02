import 'package:{{name}}/index.dart';
import 'package:enum_utils/enum_utils.dart';
import 'package:flutter/material.dart';
import 'package:fpdt/fpdt.dart';
import 'package:fpdt/option.dart';

final _fromName = fromName(AppSection.values);

enum AppSection {
  home(
    title: 'Home',
    icon: Icons.home,
    screen: HomeScreen(),
  );

  static NavItemAppSection? navItemFromName(String name) =>
      _fromName(name).p(map(NavItemAppSection.new)).p(toNullable);

  NavItem get navItem => NavItem.appSection(this);

  const AppSection({
    required this.title,
    required this.icon,
    required this.screen,
  });
  final String title;
  final IconData icon;
  final Widget screen;
}
