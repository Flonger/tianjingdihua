import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

import 'action.dart';
import 'state.dart';

Widget buildView(CommodityItemState state, Dispatch dispatch, ViewService viewService) {
  return GestureDetector(
    onTap: (){
//      dispatch(BusinessActionCreator.itemOnClick(state.storeList[index]));
    },
    child: Card(
      child: Row(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(left: 0),
            child: Image.network(
              state.imgUrl,
              width: 200,
              height: 120,
            ),
          ),
          Expanded(
              child: Column(
                children: <Widget>[
                  Text('名称:' +
                      state.title.toString()),
                  Text('描述:' +
                      state.desc.toString()),
                  Text('价格:' +
                      state.price.toString() +
                      '/' +
                      state.unit.toString()),
                ],
              )
          ),
        ],
      ),
    ),
  );
}
