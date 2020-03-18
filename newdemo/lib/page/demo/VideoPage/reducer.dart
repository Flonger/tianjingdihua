import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart' hide Action;
import 'action.dart';
import 'state.dart';

import 'VideoDetail/page.dart';
Reducer<VideoPageState> buildReducer() {
  return asReducer(
    <Object, Reducer<VideoPageState>>{
      VideoPageAction.action: _onAction,
      VideoPageAction.action: _itemOnClick,
    },
  );
}

VideoPageState _onAction(VideoPageState state, Action action) {
  final VideoPageState newState = state.clone();
  return newState;
}

VideoPageState _itemOnClick(VideoPageState state, Action action){
  println('点击跳转');
  println(action.payload);
//  Navigator.push(
//      BuildContext context,
//      MaterialPageRoute(builder: (context) => VideoDetailPage().buildPage(null)));
}