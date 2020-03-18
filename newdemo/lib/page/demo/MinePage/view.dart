import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

import 'action.dart';
import 'state.dart';

Widget buildView(MinePageState state, Dispatch dispatch, ViewService viewService) {
  return Container(
    child: Column(
      children: <Widget>[
        Image.asset(
          'res/lake.jpg',
          width: 600,
          height: 240,
          fit: BoxFit.cover,
        ),
        Text('111'),
        Text('222'),
        FloatingActionButton(
          onPressed: (){
            print('点击了');
            dispatch(MinePageActionCreator.onClick());
//            dispatch(MinePageActionCreator.click());
          },
          child: Text(state.index.toString()),
        )
      ],
    ),
  );
}
