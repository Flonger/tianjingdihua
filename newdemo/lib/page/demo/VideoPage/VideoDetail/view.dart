import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

import 'action.dart';
import 'state.dart';

Widget buildView(VideoDetailState state, Dispatch dispatch, ViewService viewService) {
  return Scaffold(
    appBar: AppBar(
      title: Text('视频详情'),
      backgroundColor: Colors.black87,
    ),
    body: Center(
      child: Container(
        child: Text(
          state.indexID,
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
