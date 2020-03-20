import 'package:fish_redux/fish_redux.dart';
import 'package:newdemo/api/store.dart';
import 'package:newdemo/page/demo/route.dart';
import 'action.dart';
import 'state.dart';

import '../../../api/user.dart';

Effect<BusinessState> buildEffect() {
  return combineEffects(<Object, Effect<BusinessState>>{
    Lifecycle.initState: _init,
    BusinessAction.itemClick: _itemOnClick,
  });
}

void _init(Action action, Context<BusinessState> ctx) {

  // Http请求
  StoreApi.getList().then((value){
    ctx.dispatch(BusinessActionCreator.updateAction(value));
  });
}

void _itemOnClick(Action action, Context<BusinessState> ctx){
      appPushRoute('store', ctx.context,params: {'index':action.payload});
}