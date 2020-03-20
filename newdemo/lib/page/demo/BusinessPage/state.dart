import 'package:fish_redux/fish_redux.dart';
import 'package:newdemo/apiModel/commodity.dart';
import '../../../apiModel/user.dart';

class BusinessState implements Cloneable<BusinessState> {

  BusinessState({this.storeList});

  List<Commodity> storeList = new List<Commodity>();

  @override
  BusinessState clone() {
    return BusinessState();
  }
}

BusinessState initState(Map<String, dynamic> args) {
  List<Commodity> tempList = new List<Commodity>();
  return BusinessState(storeList: tempList);
}