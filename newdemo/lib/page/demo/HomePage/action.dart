import 'package:fish_redux/fish_redux.dart';

//TODO replace with your own action
enum homepageAction {
  action ,
  call,
  route,
  share,
}

class homepageActionCreator {
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
