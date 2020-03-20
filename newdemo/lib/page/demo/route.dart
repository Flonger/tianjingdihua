import 'package:fish_redux/fish_redux.dart';

import 'package:flutter/cupertino.dart' hide Action;
import 'package:flutter/material.dart' hide Action;
import 'package:newdemo/global/state.dart';
import 'package:newdemo/global/store.dart';
import 'package:newdemo/page/demo/FriendPage/page.dart';


import 'HomePage/page.dart';
import 'BusinessPage/page.dart';
import 'MinePage/page.dart';
import 'StorePage/page.dart';
import 'VideoPage/page.dart';
import 'VideoPage/VideoDetail/page.dart';
import 'page.dart';

Map<String, WidgetBuilder> appRoutes = {
  '/home': (BuildContext context) => routes.buildPage("home", null),
  '/main': (BuildContext context) => routes.buildPage("main", null),
};

var routes = new PageRoutes(
  pages: <String, Page<Object, dynamic>>{
    'demo': DemoPage(),
    'home': homepagePage(),
    'business': BusinessPage(),
    'mine': MinePagePage(),
    'store': StorePagePage(),
    'video': VideoPagePage(),
    'videoDetail': VideoDetailPage(),
    'friend':FriendPagePage(),
  },
  visitor: (String path, Page<Object, dynamic> page) {
    /// XXX
    if (page.isTypeof<GlobalBaseState>()) {
      page.connectExtraStore<GlobalState>(GlobalStore.store,
              (Object pageState, GlobalState appState) {
            final GlobalBaseState p = pageState;
            if (p.appTheme != null && p.appTheme.dark == appState.appTheme.dark) {
              print("path=$path");
              return pageState;
            } else {
              if (pageState is Cloneable) {
                print("Cloneable path=$path");
                final Object copy = pageState.clone();
                final GlobalBaseState newState = copy;
                newState.appTheme = appState.appTheme;
                return newState;
              }
            }
          });
    }

    page.enhancer.append(
      viewMiddleware: <ViewMiddleware<dynamic>>[safetyView<dynamic>()],
      adapterMiddleware: <AdapterMiddleware<dynamic>>[safetyAdapter<dynamic>()],
      effectMiddleware: [_pageAnalyticsMiddleware()],
      middleware: <Middleware<dynamic>>[logMiddleware<dynamic>()],
    );
  },
);

/// 简单的Effect AOP
/// 只针对页面的生命周期进行打印
EffectMiddleware<T> _pageAnalyticsMiddleware<T>({String tag = 'redux'}) {
  return (AbstractLogic<dynamic> logic, Store<T> store) {
    return (Effect<dynamic> effect) {
      return (Action action, Context<dynamic> ctx) {
        if (logic is Page<dynamic, dynamic> && action.type is Lifecycle) {
          print('${logic.runtimeType} ${action.type.toString()} ');
        }
        return effect?.call(action, ctx);
      };
    };
  };
}

Future appPushRoute(String path, BuildContext context,
    {Map<String, dynamic> params}) async {
  return await Navigator.of(context).push(MaterialPageRoute(
      builder: (BuildContext context) => routes.buildPage(path, params)));
}

Future appPushRemoveRoute(String path, BuildContext context,
    {Map<String, dynamic> params}) async {
  return await Navigator.of(context).pushAndRemoveUntil(
      MaterialPageRoute(
          builder: (BuildContext context) => routes.buildPage(path, params)),
      ModalRoute.withName(path)); //path相同则销毁push页面
}

Future appPushNameRoute(String path, BuildContext context) async {
  return await Navigator.of(context).pushNamed(path);
}

//push之后上一级销毁
Future appPushReplacementNamed(String path, BuildContext context) async {
  return await Navigator.pushReplacementNamed(context, path);
}