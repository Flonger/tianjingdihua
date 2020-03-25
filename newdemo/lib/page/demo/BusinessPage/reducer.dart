import 'package:fish_redux/fish_redux.dart';
import 'package:newdemo/apiModel/commodity.dart';
import 'package:newdemo/page/demo/BusinessPage/Commodity_Item/state.dart';

import 'action.dart';
import 'state.dart';

Reducer<BusinessState> buildReducer() {
  return asReducer(
    <Object, Reducer<BusinessState>>{
      BusinessAction.query: _onQuery,
      BusinessAction.loadSettings: _onLoadSettings,
    },
  );
}

BusinessState _onQuery(BusinessState state, Action action) {
  final BusinessState newState = state.clone();
  newState.storeList = action.payload;
  return newState;
}

BusinessState _onLoadSettings(BusinessState state, Action action) {
  final BusinessState newState = state.clone();
  newState.cItems = action.payload;
  println('state更新了');
  return newState;
}