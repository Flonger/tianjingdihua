import 'package:fish_redux/fish_redux.dart';
import 'package:newdemo/api/homepage.dart';
import 'action.dart';
import 'state.dart';
import 'package:url_launcher/url_launcher.dart';
import 'dart:io';
Effect<homepageState> buildEffect() {
  return combineEffects(<Object, Effect<homepageState>>{
    Lifecycle.initState: _init,
    homepageAction.action: _onAction,
    homepageAction.call: _onCall,
    homepageAction.route: _onRoute,
    homepageAction.share: _onShare,
  });
}
void _init(Action action, Context<homepageState> ctx) {
  HomePageApi.getInfo().then((value){
      ctx.dispatch(homepageActionCreator.getInfo(value));
  });
}
void _onAction(Action action, Context<homepageState> ctx) {
}
void _onCall(Action action, Context<homepageState> ctx) {
  println('打电话');
  callme();
}
void _onRoute(Action action, Context<homepageState> ctx) {
  println('导航');
  route();

}
void _onShare(Action action, Context<homepageState> ctx) {
  println('分享');

}

void callme() async {
//    final url = 'mailto:123456xxx@qq.com';//发邮件
//    final url = 'sms:177xxxxxxxx';//发短信
//    final url = 'http://www.baidu.com'; //打开网页，支持http和https
  final url = 'tel:' + '15632363958';//打电话
  if (await canLaunch(url)) {
    launch(url);
  } else {
    print('系统错误');
  }
}

void route() async {
  if (Platform.isIOS){
    const url = 'iosamap://path?sourceApplication=demo&sname=西湖&dname=盘石&dev=1&t=0';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      println('不能导航');
    }
  }else if (Platform.isAndroid){
    const url = 'androidamap://keywordNavi?sourceApplication=demo&keyword=方恒国际中心&style=2';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      println('不能导航');
    }
  }

}