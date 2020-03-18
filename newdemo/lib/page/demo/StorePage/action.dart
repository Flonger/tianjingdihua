import 'package:fish_redux/fish_redux.dart';

//TODO replace with your own action
enum StorePageAction { action }

class StorePageActionCreator {
  static Action onAction() {
    return const Action(StorePageAction.action);
  }
}
