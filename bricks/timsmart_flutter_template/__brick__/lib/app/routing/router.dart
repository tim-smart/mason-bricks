import 'package:{{name}}/index.dart';
import 'package:navigation_stack/navigation_stack.dart';

final appRouter = NavigationStackRouter<NavItem>(
  defaultItem: const NavItem.appSection(AppSection.home),
  routes: [
    NavigationStackRoute(
      key: 'sections',
      id: (item) => item.section.name,
      fromId: AppSection.navItemFromName,
      fallback: const NavItemAppSection(AppSection.home),
    ),
  ],
);

final appRouterParser = appRouter.parser;
