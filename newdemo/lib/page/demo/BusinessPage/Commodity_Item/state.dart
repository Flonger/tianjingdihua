import 'package:fish_redux/fish_redux.dart';

class CommodityItemState implements Cloneable<CommodityItemState> {

  String imgUrl;
  String title;
  String desc;
  String price;
  String unit;
  int num;
  String id;
  CommodityItemState({this.imgUrl, this.title, this.desc, this.price, this.unit,this.id,this.num});


  @override
  CommodityItemState clone() {
    return CommodityItemState()
    ..imgUrl = imgUrl
    ..title = title
    ..desc = desc
    ..price = price
    ..unit = unit
    ..id = id
    ..num = num;
  }
}

CommodityItemState initState(Map<String, dynamic> args) {
  println('ItemInit');
  return CommodityItemState();
}
