import 'package:fast_immutable_collections/fast_immutable_collections.dart'
    hide Tuple2;
import 'package:{{name}}/app_sections/app_section.dart';
import 'package:fpdt/fpdt.dart';
import 'package:fpdt/option.dart' as O;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:navigation_stack/navigation_stack.dart';
import 'package:riverpod_bloc_stream/riverpod_bloc_stream.dart';

export 'package:navigation_stack/navigation_stack.dart';

part 'navigation_stack.freezed.dart';

final provider = BlocStreamProvider<IList<Item>>((ref) => NavigationStack(
      transform: (stack) => stack.isEmpty ? _homeStack : stack,
    ));

final parserProvider = Provider((ref) => NavigationStackParser<Item>(
      defaultItem: Item.defaultItem,
      fromKey: Item.fromKey,
    ));

const _homeStack = IListConst([Item.appSection('home')]);

@freezed
class Item with _$Item implements NavigationStackItemBase {
  const Item._();

  static const defaultItem = Item.appSection('home');

  const factory Item.appSection(String id) = _ItemAppSection;

  @override
  Tuple2<String, String> get key => when(
        appSection: (id) => tuple2('sections', id),
      );

  static Option<Item> fromKey(String key, String id) {
    switch (key) {
      case 'sections':
        return O.some(Item.appSection(id));
    }

    return kNone;
  }
}

typedef Action = NavigationStackAction<Item>;

Action gotoSection(AppSection section) =>
    (b, add) => add(IList([Item.appSection(section.id)]));
