import 'package:fish_redux/fish_redux.dart';

//TODO replace with your own action
enum CommodityItemAction { action }

class CommodityItemActionCreator {
  static Action onAction() {
    return const Action(CommodityItemAction.action);
  }
}
