
import 'package:fish_redux/fish_redux.dart';
import 'package:newdemo/page/demo/BusinessPage/Commodity_Item/component.dart';
import 'package:newdemo/page/demo/BusinessPage/state.dart';

class CommodityAdapter extends SourceFlowAdapter<BusinessState>{
  static const commodityType = 'commodity';

  CommodityAdapter() : super(pool:<String, Component<Object>>{
    commodityType:CommodityItemComponent(),
  });
}