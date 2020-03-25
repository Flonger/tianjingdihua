import 'package:fish_redux/fish_redux.dart';
import 'action.dart';
import 'state.dart';

Effect<VideoDetailState> buildEffect() {
  return combineEffects(<Object, Effect<VideoDetailState>>{
    VideoDetailAction.action: _onAction,
    Lifecycle.dispose : _dispose,
  });
}

void _onAction(Action action, Context<VideoDetailState> ctx) {
}
void _dispose(Action action, Context<VideoDetailState> ctx) {
  ctx.state.controller.dispose();
}
