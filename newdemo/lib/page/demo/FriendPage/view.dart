import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';
import 'package:newdemo/apiModel/pet.dart';
import 'package:responsive_grid/responsive_grid.dart';

import 'action.dart';
import 'state.dart';

Widget buildView(FriendPageState state, Dispatch dispatch, ViewService viewService) {
  return ResponsiveGridList(
      desiredItemWidth: 150,
      minSpacing: 10,
      children: _getSubWidget(state,dispatch),
  );
}

List<Widget> _getSubWidget(FriendPageState state, Dispatch dispatch){
  List<Widget> subW = [];//先建一个数组用于存放循环生成的widget
  for (Pet pet in state.petList){
    subW.add(
      new GestureDetector(
        onTap: (){dispatch(FriendPageActionCreator.toDetail(pet));},
        child: Container(
          height: 200,
          alignment: Alignment(0, 0),
          color: Colors.cyan,
          child: Image.network(pet.image.toString()),
        ),
      )
    );
  }
  return subW;
}







