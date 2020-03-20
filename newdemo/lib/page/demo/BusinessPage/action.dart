import 'package:fish_redux/fish_redux.dart';
import 'package:newdemo/apiModel/commodity.dart';

//TODO replace with your own action
enum BusinessAction {
  query,
  itemClick,
}

class BusinessActionCreator {

  static Action updateAction(List<Commodity> storeList){
    print('由effect请求后dispatch的值来了');
    return Action(BusinessAction.query, payload: storeList);
  }

  static Action itemOnClick(String itemId){
    return Action(BusinessAction.itemClick, payload: itemId);
  }


}