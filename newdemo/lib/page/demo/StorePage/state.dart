import 'package:fish_redux/fish_redux.dart';
import 'package:newdemo/apiModel/commodity.dart';

class StorePageState implements Cloneable<StorePageState> {
  String itemID = '';
  String itemName = '';
  @override
  StorePageState clone() {
    return StorePageState();
  }
}

StorePageState initState(Map<String, dynamic> args) {
  Commodity commodity = args['commodity'];
  var storePageState = StorePageState();
  storePageState..itemID = commodity.id;
  storePageState..itemName = commodity.title;
  return storePageState;
}
