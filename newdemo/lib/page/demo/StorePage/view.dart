import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

import 'action.dart';
import 'state.dart';

Widget buildView(StorePageState state, Dispatch dispatch, ViewService viewService) {
//  return WebviewScaffold(
//    url: 'https://www.baidu.com',
//    appBar: AppBar(
//      backgroundColor: Colors.black87,
//      title: Text(
//        '用品详情',
//      ),
//    ),
//    withZoom: true,
//    withLocalStorage: true,
//    hidden: true,
//  );
  return Scaffold(
      appBar: AppBar(
        title: Text('用品详情'),
        backgroundColor: Colors.black87,
      ),
      body: Center(
        child: Container(
          child: Text(
            state.itemName,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 20,
              color: Colors.deepOrange,
              decoration: TextDecoration.none,
            ),
          ),
        ),
      )
  );
}
