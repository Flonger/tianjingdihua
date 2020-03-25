import 'package:fish_redux/fish_redux.dart';
import 'package:newdemo/apiModel/banner.dart';
import '../../route.dart';
import 'action.dart';
import 'state.dart';

Effect<BannerState> buildEffect() {
  return combineEffects(<Object, Effect<BannerState>>{
    BannerAction.action: _onAction,
    BannerAction.bannerClick: _bannerClick,
  });
}

void _onAction(Action action, Context<BannerState> ctx) {
}
void _bannerClick(Action action, Context<BannerState> ctx) {
  println(action.payload);
  Banner banner = action.payload;
  if (banner.type == 1){
    appPushRoute('webPage', ctx.context,
        params: {'title': '详情','url':banner.url});
  }
}
