import 'package:fish_redux/fish_redux.dart';
import 'action.dart';
import 'state.dart';

Effect<MinePageState> buildEffect() {
  return combineEffects(<Object, Effect<MinePageState>>{
    MinePageAction.action: _onAction,
    MinePageAction.onClick: _onClick,
    Lifecycle.initState: _initState,
  });
}
void _initState(Action action, Context<MinePageState> ctx) {
    println('hook initState方法');
}
void _onAction(Action action, Context<MinePageState> ctx) {
}
void _onClick(Action action, Context<MinePageState> ctx) {
    println('effect也知道点击了');
    ctx.dispatch(MinePageActionCreator.click());
//    ctx.state.index++;
//    println(ctx.state.index);
}
