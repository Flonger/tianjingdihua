import 'package:fish_redux/fish_redux.dart';

class CommodityItemState implements Cloneable<CommodityItemState> {

  String imgUrl;
  String title;
  String desc;
  String price;
  String unit;
  CommodityItemState({this.imgUrl, this.title, this.desc, this.price, this.unit});


  @override
  CommodityItemState clone() {
    return CommodityItemState()
    ..imgUrl = imgUrl
    ..title = title
    ..desc = desc
    ..price = price
    ..unit = unit;
  }
}

CommodityItemState initState(Map<String, dynamic> args) {
  println('ItemInit');
  return CommodityItemState();
}
