import 'package:{{name}}/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter_nucleus/flutter_nucleus.dart';
import 'package:fpdt/fpdt.dart';
import 'package:fpdt_flutter/fpdt_flutter.dart';
import 'package:navigation_stack/navigation_stack.dart';

final navigatorKey = atom((_) => GlobalKey<NavigatorState>());

final routerDelegateAtom = atom((get) => NavigationStackDelegate(
      navigatorKey: get(navigatorKey),
      stack: get(navStackAtom.parent),
      builder: (context, item) => item.build(context),
    ));

final navStackAtom = stateMachineAtom<IList<NavItem>, NavigationStack<NavItem>>(
    (get) => createNavigationStack(
          transform: (stack) => stack.isEmpty ? _homeStack : stack,
          initialStack: _homeStack,
        ));

const _homeStack = IListConst([NavItem.appSection(AppSection.home)]);
