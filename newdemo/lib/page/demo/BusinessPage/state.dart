import 'package:fish_redux/fish_redux.dart';
import 'package:newdemo/apiModel/commodity.dart';
import 'package:newdemo/page/demo/BusinessPage/Commodity_Item/state.dart';
import 'package:newdemo/page/demo/BusinessPage/adapter.dart';

class BusinessState extends MutableSource implements Cloneable<BusinessState> {


  List<Commodity> storeList = new List<Commodity>();

  List<CommodityItemState> cItems = new List<CommodityItemState>();
  BusinessState({this.storeList,this.cItems});


  @override
  BusinessState clone() {
    return BusinessState();
  }

  @override
  Object getItemData(int index) => cItems[index];

  @override
  String getItemType(int index) => CommodityAdapter.commodityType;

  @override
  int get itemCount => cItems?.length ?? 0;

  @override
  void setItemData(int index, Object data) => cItems[index] = data;
}

BusinessState initState(Map<String, dynamic> args) {
  return BusinessState();
}

