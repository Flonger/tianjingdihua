import 'package:fish_redux/fish_redux.dart';

//TODO replace with your own action
enum homepageAction {
  action,
  call,
  route,
  share,
  getInfo,
}

class homepageActionCreator {

  static Action getInfo(Map<String, Object> homepageInfo){
    print('由effect请求后dispatch的值来了');
    return Action(homepageAction.getInfo, payload: homepageInfo);
  }
  static Action onAction() {
    return const Action(homepageAction.action);
  }
  static Action callClick() {
    return const Action(homepageAction.call);
  }
  static Action routeClick() {
    return const Action(homepageAction.route);
  }
  static Action shareClick() {
    return const Action(homepageAction.share);
  }
}
