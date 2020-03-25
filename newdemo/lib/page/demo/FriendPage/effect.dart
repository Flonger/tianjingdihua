import 'package:fish_redux/fish_redux.dart';
import 'package:newdemo/api/friend.dart';
import 'action.dart';
import 'state.dart';
import '../route.dart';
Effect<FriendPageState> buildEffect() {
  return combineEffects(<Object, Effect<FriendPageState>>{
    Lifecycle.initState: _init,
    FriendPageAction.action: _onAction,
    FriendPageAction.toDetail: _toDetail,
  });
}

void _onAction(Action action, Context<FriendPageState> ctx) {
}
void _toDetail(Action action, Context<FriendPageState> ctx) {
  appPushRoute('friendDetail', ctx.context,
      params: {"title": '1', "name": '2',"pet": action.payload});
}
void _init(Action action, Context<FriendPageState> ctx) {
  FriendApi.getList().then((value){
    ctx.dispatch(FriendPageActionCreator.getList(value));
  });
}
