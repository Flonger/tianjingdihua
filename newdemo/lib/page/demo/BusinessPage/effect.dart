import 'package:fish_redux/fish_redux.dart';
import 'package:newdemo/api/store.dart';
import 'package:newdemo/apiModel/commodity.dart';
import 'package:newdemo/page/demo/route.dart';
import 'Commodity_Item/state.dart';
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
    _loadSettingItems(action, ctx, value);
    ctx.dispatch(BusinessActionCreator.updateAction(value));
  });
}

void _itemOnClick(Action action, Context<BusinessState> ctx){
      appPushRoute('store', ctx.context,params: {'commodity':action.payload});
}

void _loadSettingItems(Action action, Context<BusinessState> ctx, List arr) {
  var settings = List.generate(arr.length, (index) {
    Commodity commodity = arr[index];
    return _generateItemState(ctx, commodity);
  });
  ctx.dispatch(BusinessActionCreator.onLoadSettings(settings));
}


CommodityItemState _generateItemState(Context<BusinessState> ctx, Commodity commodity) => CommodityItemState(
  imgUrl: commodity.image,
  title: commodity.title,
  desc: commodity.desc,
  price: commodity.price,
  unit: commodity.unit,
);