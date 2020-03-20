import 'package:fish_redux/fish_redux.dart';
import 'package:newdemo/apiModel/pet.dart';

//TODO replace with your own action
enum FriendPageAction {
  action,
  getList,
}

class FriendPageActionCreator {
  static Action onAction() {
    return const Action(FriendPageAction.action);
  }
  static Action getList(List <Pet> petList) {
    return Action(FriendPageAction.getList, payload: petList);
  }
}
