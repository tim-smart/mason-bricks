import 'package:{{name}}/app/routing/navigation_stack.dart';
import 'package:{{name}}/app_sections/app_section.dart';

final appRouter = NavigationStackRouter<Item>(
  defaultItem: const Item.appSection(AppSection.home()),
  routes: [
    appSectionRouter.parentRoute<ItemAppSection>(
      key: 'sections',
      to: ItemAppSection.new,
      from: (parent) => parent.section,
    ),
  ],
);
final appRouterParser = appRouter.parser;
