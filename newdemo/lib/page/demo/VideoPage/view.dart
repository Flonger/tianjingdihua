import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

import 'action.dart';
import 'state.dart';

import 'package:responsive_grid/responsive_grid.dart';

Widget buildView(VideoPageState state, Dispatch dispatch, ViewService viewService) {
  return ResponsiveGridList(
      desiredItemWidth: 150,
      minSpacing: 10,
      children: [
        1,
        2,
        3,
        4,
        5,
        6,
        7,
        8,
        9,
        10,
        11,
        12,
        13,
        14,
        15,
        16,
        17,
        18,
        19,
        20
      ].map((i) {
        return GestureDetector(
          onTap: (){
            dispatch(VideoPageActionCreator.itemOnClick(i.toString()));
          },
          child: Container(
            height: 200,
            alignment: Alignment(0, 0),
            color: Colors.cyan,
            child: Text(i.toString()),
          ),
        );
      }).toList()
  );
}
