import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

import 'action.dart';
import 'state.dart';

Widget buildView(WebPageState state, Dispatch dispatch, ViewService viewService) {
  return WebviewScaffold(
    url: state.url,
    appBar: AppBar(
      backgroundColor: Colors.black87,
      title: Text(
        state.title,
      ),
    ),
    withZoom: true,
    withLocalStorage: true,
    hidden: true,
  );;
}
