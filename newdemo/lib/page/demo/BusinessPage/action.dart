import 'package:fish_redux/fish_redux.dart';
import 'package:newdemo/apiModel/commodity.dart';
import 'package:newdemo/page/demo/BusinessPage/Commodity_Item/state.dart';

//TODO replace with your own action
enum BusinessAction {
  query,
  itemClick,
  loadCItems,
}

class BusinessActionCreator {

  static Action updateAction(List<Commodity> storeList){
    return Action(BusinessAction.query, payload: storeList);
  }

  static Action itemOnClick(Commodity commodity){
    return Action(BusinessAction.itemClick, payload: commodity);
  }

  static Action onLoadCItems(List<CommodityItemState> settings) {
    return Action(BusinessAction.loadCItems, payload: settings);
  }
}