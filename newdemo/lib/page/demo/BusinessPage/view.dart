import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

import 'action.dart';
import 'state.dart';

Widget buildView(BusinessState state, Dispatch dispatch, ViewService viewService) {
    return ListView.builder(
      itemBuilder: viewService.buildAdapter().itemBuilder,
      itemCount: viewService.buildAdapter().itemCount,
    );
//  var buildListView = ListView.builder(
//    itemCount: state.storeList.length,
//    itemBuilder: (BuildContext context, int index) {
//      return GestureDetector(
//        onTap: (){dispatch(BusinessActionCreator.itemOnClick(state.storeList[index]));},
//        child: Card(
//            child: Row(
//              children: <Widget>[
//                Padding(
//                  padding: EdgeInsets.only(left: 0),
//                  child: Image.network(
//                    state.storeList[index].image,
//                    width: 200,
//                    height: 120,
//                  ),
//                ),
//                Expanded(
//                  child: Column(
//                    children: <Widget>[
//                      Text('名称:' +
//                          state.storeList[index].title.toString()),
//                      Text('描述:' +
//                          state.storeList[index].desc.toString()),
//                      Text('价格:' +
//                          state.storeList[index].price.toString() +
//                          '/' +
//                          state.storeList[index].unit.toString()),
//                    ],
//                  )
//                ),
//              ],
//            ),
//        ),
//      );
//    },
//  );
//
//  return Scaffold(appBar: null, body: Center(child: buildListView));
}