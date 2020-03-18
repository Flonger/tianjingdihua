import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Reducer<homepageState> buildReducer() {
  return asReducer(
    <Object, Reducer<homepageState>>{
      homepageAction.action: _onAction,
    },
  );
}

homepageState _onAction(homepageState state, Action action) {
  final homepageState newState = state.clone();
  return newState;
}
