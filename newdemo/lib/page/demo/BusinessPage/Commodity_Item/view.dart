import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';
import 'package:newdemo/apiModel/commodity.dart';
import 'package:newdemo/page/demo/BusinessPage/action.dart';

import 'action.dart';
import 'state.dart';

Widget buildView(CommodityItemState state, Dispatch dispatch, ViewService viewService) {
  return GestureDetector(
    onTap: (){
      Commodity commodity = new Commodity(state.id, state.title, state.imgUrl, state.num, state.desc, state.price, state.unit);
      dispatch(BusinessActionCreator.itemOnClick(commodity));
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
