import 'package:fish_redux/fish_redux.dart';
import 'action.dart';
import 'state.dart';

Effect<FriendDetailState> buildEffect() {
  return combineEffects(<Object, Effect<FriendDetailState>>{
    FriendDetailAction.action: _onAction,
  });
}

void _onAction(Action action, Context<FriendDetailState> ctx) {
}
