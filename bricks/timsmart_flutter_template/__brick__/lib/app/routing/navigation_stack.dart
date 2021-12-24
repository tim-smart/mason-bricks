import 'package:fpdt/fpdt.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:navigation_stack/navigation_stack.dart';
import 'package:riverpod_bloc_stream/riverpod_bloc_stream.dart';
import 'package:{{name}}/app_sections/app_section.dart';

export 'package:navigation_stack/navigation_stack.dart';

part 'navigation_stack.freezed.dart';

final provider = BlocStreamProvider<IList<Item>>((ref) => NavigationStack(
      transform: (stack) => stack.isEmpty ? _homeStack : stack,
    ));

const _homeStack = IListConst([Item.appSection(AppSection.home())]);

@freezed
class Item with _$Item {
  const factory Item.appSection(AppSection section) = ItemAppSection;
}

typedef Action = NavigationStackAction<Item>;

Action gotoSection(AppSection section) =>
    (b, add) => add(IList([Item.appSection(section)]));
