import 'dart:math';

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
    child: Container(
      height: 180,
      margin: EdgeInsets.all(5),
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.grey,
        ),
      ),
      child: Row(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(left: 8),
            child: Stack(
              overflow: Overflow.clip,
              children: <Widget>[
                Container(
                  height: 150,
                  width: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(state.imgUrl),
                    ),
                  ),
                ),
                Positioned(
                  top: -32,
                  left: -32,
                  child: Transform.rotate(
                    angle: -pi / 4,
                    child: Container(
                      color: Colors.red,
                      width: 64,
                      height: 64,
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child: Text(
                          '热卖',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.symmetric(
                vertical: 16,
                horizontal: 8,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    state.title,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(fontSize: 20),
                  ),
                  Text(
                    state.desc,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(fontSize: 10),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 2),
                    child: Text(
                      '包邮',
                      style: TextStyle(
                        fontSize: 8,
                        color: Colors.red.shade300,
                      ),
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      border: Border.all(color: Colors.red.shade300),
                    ),
                  ),
                  Row(
                    children: <Widget>[
                      Text(
                        '\￥ '+state.price+'/'+state.unit,
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.red.shade500,
                        ),
                      ),
                      Spacer(),
                      Text(
                        '库存'+state.num.toString(),
                        style: TextStyle(color: Colors.grey.shade600),
                      ),
                      Spacer(),
                      Text(
                        '  杭州',
                        style: TextStyle(
                          color: Colors.grey.shade600,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Text(
                        '杭州天精地华宠乐园',
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.grey.shade600,
                        ),
                      ),
                      Spacer(),
                      Icon(
                        Icons.more_horiz,
                        color: Colors.grey.shade600,
                        size: 16,
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    ),
  );
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
