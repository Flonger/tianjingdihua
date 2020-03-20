import 'package:fish_redux/fish_redux.dart';
import 'package:newdemo/api/friend.dart';
import 'action.dart';
import 'state.dart';

Effect<FriendPageState> buildEffect() {
  return combineEffects(<Object, Effect<FriendPageState>>{
    Lifecycle.initState: _init,
    FriendPageAction.action: _onAction,
  });
}

void _onAction(Action action, Context<FriendPageState> ctx) {
}
void _init(Action action, Context<FriendPageState> ctx) {
  FriendApi.getList().then((value){
    ctx.dispatch(FriendPageActionCreator.getList(value));
  });
}
