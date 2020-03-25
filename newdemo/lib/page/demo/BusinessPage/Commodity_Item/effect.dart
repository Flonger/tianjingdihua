import 'package:fish_redux/fish_redux.dart';
import 'action.dart';
import 'state.dart';

Effect<CommodityItemState> buildEffect() {
  return combineEffects(<Object, Effect<CommodityItemState>>{
    CommodityItemAction.action: _onAction,
    Lifecycle.initState: _init,
  });
}

void _onAction(Action action, Context<CommodityItemState> ctx) {
}
void _init(Action action, Context<CommodityItemState> ctx) {
  println('item初始化');
}