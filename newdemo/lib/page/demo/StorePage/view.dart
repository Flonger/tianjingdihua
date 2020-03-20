import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

import 'action.dart';
import 'state.dart';

Widget buildView(StorePageState state, Dispatch dispatch, ViewService viewService) {
  return Scaffold(
      appBar: AppBar(
        title: Text('用品详情'),
        backgroundColor: Colors.black87,
      ),
      body: Center(
        child: Container(
          child: Text(
            state.itemID,
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
