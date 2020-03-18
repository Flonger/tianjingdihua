import 'package:fish_redux/fish_redux.dart';
import 'action.dart';
import 'state.dart';

Effect<StorePageState> buildEffect() {
  return combineEffects(<Object, Effect<StorePageState>>{
    StorePageAction.action: _onAction,
  });
}

void _onAction(Action action, Context<StorePageState> ctx) {
}
