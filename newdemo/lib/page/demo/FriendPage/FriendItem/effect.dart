import 'package:fish_redux/fish_redux.dart';
import 'action.dart';
import 'state.dart';

Effect<FriendItemState> buildEffect() {
  return combineEffects(<Object, Effect<FriendItemState>>{
    FriendItemAction.action: _onAction,
  });
}

void _onAction(Action action, Context<FriendItemState> ctx) {
}
