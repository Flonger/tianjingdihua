import 'package:fish_redux/fish_redux.dart';
import '../route.dart';
import 'action.dart';
import 'state.dart';

Effect<VideoPageState> buildEffect() {
  return combineEffects(<Object, Effect<VideoPageState>>{
    VideoPageAction.action: _onAction,
    VideoPageAction.itemClick: _itemOnClick,
  });
}

void _onAction(Action action, Context<VideoPageState> ctx) {
}
void _itemOnClick(Action action, Context<VideoPageState> ctx) {
  println('点击跳转');
  println(action.payload);
  appPushRoute('videoDetail', ctx.context,
      params: {"title": '1', "name": '2',"id": action.payload});
}


