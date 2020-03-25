import 'package:fish_redux/fish_redux.dart';

//TODO replace with your own action
enum FriendDetailAction { action }

class FriendDetailActionCreator {
  static Action onAction() {
    return const Action(FriendDetailAction.action);
  }
}
