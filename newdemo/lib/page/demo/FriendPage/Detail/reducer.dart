import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Reducer<FriendDetailState> buildReducer() {
  return asReducer(
    <Object, Reducer<FriendDetailState>>{
      FriendDetailAction.action: _onAction,
    },
  );
}

FriendDetailState _onAction(FriendDetailState state, Action action) {
  final FriendDetailState newState = state.clone();
  return newState;
}
