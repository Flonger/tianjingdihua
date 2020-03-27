import 'package:fish_redux/fish_redux.dart';

//TODO replace with your own action
enum FriendItemAction { action }

class FriendItemActionCreator {
  static Action onAction() {
    return const Action(FriendItemAction.action);
  }
}
