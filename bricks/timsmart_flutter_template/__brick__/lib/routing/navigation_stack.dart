import 'package:fpdt/fpdt.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:navigation_stack/navigation_stack.dart';
import 'package:{{name}}/app_sections/app_section.dart';
import 'package:{{name}}/routing/nav_item.dart';

final navStackProvider =
    Provider((ref) => navstackProvider<NavItem>(ref)(createNavigationStack(
          transform: (stack) => stack.isEmpty ? _homeStack : stack,
          initialStack: _homeStack,
        )));

final navItemProvider = Provider(
    (ref) => navstackStateProvider<NavItem>(ref)(ref.watch(navStackProvider)));

const _homeStack = IListConst([NavItem.appSection(AppSection.home())]);

NavigationStackOp<NavItem, Unit> gotoSection(AppSection section) =>
    navStackReplace(IList([NavItem.appSection(section)]));
