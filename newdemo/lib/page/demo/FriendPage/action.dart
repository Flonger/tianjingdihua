import 'package:fish_redux/fish_redux.dart';
import 'package:newdemo/apiModel/pet.dart';
import 'package:newdemo/page/demo/FriendPage/FriendItem/state.dart';

//TODO replace with your own action
enum FriendPageAction {
  action,
  getList,
  toDetail,
  loadFItems,
}

class FriendPageActionCreator {
  static Action onAction() {
    return const Action(FriendPageAction.action);
  }
  static Action getList(List <Pet> petList) {
    return Action(FriendPageAction.getList, payload: petList);
  }
  static Action toDetail(Pet pet) {
    return Action(FriendPageAction.toDetail, payload: pet);
  }
  static Action onLoadFItems(List<FriendItemState> settings) {
    return Action(FriendPageAction.loadFItems, payload: settings);
  }
}
