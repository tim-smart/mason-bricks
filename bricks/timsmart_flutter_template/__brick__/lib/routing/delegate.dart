import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:navigation_stack/navigation_stack.dart';
import 'package:{{name}}/routing/navigation_stack.dart';

final navigatorKeyProvider = Provider((_) => GlobalKey<NavigatorState>());

final routerDelegateProvider = Provider((ref) => NavigationStackDelegate(
      navigatorKey: ref.watch(navigatorKeyProvider),
      stack: ref.watch(navStackProvider),
      builder: (context, item) => item.build(context),
    ));
