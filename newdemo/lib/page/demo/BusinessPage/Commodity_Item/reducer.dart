import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Reducer<CommodityItemState> buildReducer() {
  return asReducer(
    <Object, Reducer<CommodityItemState>>{
      CommodityItemAction.action: _onAction,
    },
  );
}

CommodityItemState _onAction(CommodityItemState state, Action action) {
  final CommodityItemState newState = state.clone();
  return newState;
}
