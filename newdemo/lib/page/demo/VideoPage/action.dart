import 'package:fish_redux/fish_redux.dart';

//TODO replace with your own action
enum VideoPageAction {
  action,
  itemClick,
}

class VideoPageActionCreator {
  static Action onAction() {
    return const Action(VideoPageAction.action);
  }
  static Action itemOnClick(String itemId) {
    return Action(VideoPageAction.itemClick, payload: itemId);
  }
}
