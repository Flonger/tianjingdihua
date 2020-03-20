import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Reducer<FriendPageState> buildReducer() {
  return asReducer(
    <Object, Reducer<FriendPageState>>{
      FriendPageAction.action: _onAction,
      FriendPageAction.getList: _getList,
    },
  );
}

FriendPageState _onAction(FriendPageState state, Action action) {
  final FriendPageState newState = state.clone();
  return newState;
}
FriendPageState _getList(FriendPageState state, Action action) {
  final FriendPageState newState = state.clone();
  newState.petList = action.payload;
  return newState;
}
