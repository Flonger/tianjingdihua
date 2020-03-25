import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

import 'action.dart';
import 'state.dart';

Widget buildView(FriendDetailState state, Dispatch dispatch, ViewService viewService) {
  return Scaffold(
      appBar: AppBar(
        title: Text('爱宠详情'),
        backgroundColor: Colors.black87,
      ),
      body: Center(
        child: Container(
          child: Text(
            state.name,
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
