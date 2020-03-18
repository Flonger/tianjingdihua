import 'package:fish_redux/fish_redux.dart';

//TODO replace with your own action
enum MinePageAction {
  action,
  click,
  onClick,
}

class MinePageActionCreator {
  static Action onAction() {
    return const Action(MinePageAction.action);
  }
  static Action click() {
    print('action中dispatch的值来了');
    return const Action(MinePageAction.click);
  }
  static Action onClick() {
    print('action中dispatch的值来了');
    return const Action(MinePageAction.onClick);
  }
}
