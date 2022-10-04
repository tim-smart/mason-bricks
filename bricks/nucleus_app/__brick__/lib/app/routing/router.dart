import 'package:fpdt/fpdt.dart';
import 'package:{{name}}/index.dart';
import 'package:flutter_nucleus/flutter_nucleus.dart';
import 'package:navigation_stack/navigation_stack.dart';

final appRouter = atom((get) => NavigationStackRoot<NavItem>(
      defaultItem: const NavItem.home(),
      routes: [
        const NavigationStackRoute(
          key: 'home',
          fallback: NavItemHome(),
        ),
      ],
      transform: (stack) => stack.isEmpty ? _homeStack : stack,
      builder: (context, item) => item.build(context),
    ));

final navStackAtom = appRouter.select((r) => r.stack);

const _homeStack = IListConst([NavItem.home()]);
