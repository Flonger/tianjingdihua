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
        10
      ].map((i) {
        return GestureDetector(
          onTap: (){
            dispatch(VideoPageActionCreator.itemOnClick(i.toString()));
          },
          child: Container(
            height: 200,
            alignment: Alignment(0, 0),
            color: hexToColor('#FAE13E'),
            child: Text('摄像头'+i.toString()),
          ),
        );
      }).toList()
  );
}

Color hexToColor(String s) {
  // 如果传入的十六进制颜色值不符合要求，返回默认值
  if (s == null || s.length != 7 || int.tryParse(s.substring(1, 7), radix: 16) == null) {
    s = '#999999';
  }
  return new Color(int.parse(s.substring(1, 7), radix: 16) + 0xFF000000);
}