import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Reducer<MinePageState> buildReducer() {
  return asReducer(
    <Object, Reducer<MinePageState>>{
      MinePageAction.action: _onAction,
      MinePageAction.click: _click,
    },
  );
}

MinePageState _onAction(MinePageState state, Action action) {
  final MinePageState newState = state.clone();
  return newState;
}
MinePageState _click(MinePageState state, Action action) {
  print('reducer我是值真正更新的地方');
  state.index ++;
  final MinePageState newState = state.clone();
  newState.index = state.index;
  return newState;
}
