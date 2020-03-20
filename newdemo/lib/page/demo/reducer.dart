import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Reducer<DemoState> buildReducer() {
  return asReducer(
    <Object, Reducer<DemoState>>{
      DemoAction.action: _onAction,
    },
  );
}

DemoState _onAction(DemoState state, Action action) {
  final DemoState newState = state.clone();
  newState.selectedIndex = action.payload;
  switch(action.payload){
    case 0:
      newState.naviName = '宠物乐园';
      break;
    case 1:
      newState.naviName = '爱宠用品';
      break;
    case 2:
      newState.naviName = '爱宠交友';
      break;
    case 3:
      newState.naviName = '爱宠生活';
      break;
    case 4:
      newState.naviName = '我的';
      break;
  }
  return newState;
}