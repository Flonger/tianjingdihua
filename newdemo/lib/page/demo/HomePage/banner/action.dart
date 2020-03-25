import 'package:fish_redux/fish_redux.dart';
import 'package:newdemo/apiModel/banner.dart';

//TODO replace with your own action
enum BannerAction { action,
  bannerClick,
}

class BannerActionCreator {
  static Action onAction() {
    return const Action(BannerAction.action);
  }
  static Action bannerClick(Banner banner) {
    return Action(BannerAction.bannerClick, payload: banner);
  }
}
