import 'package:navigation_stack/navigation_stack.dart';
import 'package:{{name}}/routing/nav_item.dart';
import 'package:{{name}}/app_sections/app_section.dart';

final appRouter = NavigationStackRouter<NavItem>(
  defaultItem: const NavItem.appSection(AppSection.home()),
  routes: [
    appSectionRouter.parentRoute<NavItemAppSection>(
      key: 'sections',
      toParent: NavItemAppSection.new,
      fromParent: (parent) => parent.section,
    ),
  ],
);
final appRouterParser = appRouter.parser;
