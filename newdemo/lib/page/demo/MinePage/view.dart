import 'package:badges/badges.dart';
import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'action.dart';
import 'state.dart';

Widget buildView(MinePageState state, Dispatch dispatch, ViewService viewService) {

  return _allView(viewService);
}

_allView(ViewService viewService) {
  ScreenUtil.init(viewService.context);
  double ll = ScreenUtil.screenWidthDp - 100;
  return Stack(
    children: <Widget>[
      Image(
        image: AssetImage('images/me_back.png'),
      ),
      Padding(
        padding: EdgeInsets.only(left: 25, top: 55),
        child: Container(
          width: 53,
          height: 53,
          child: Image(
            image: AssetImage('images/me_header.png'),
          ),
        ),
      ),
      Padding(
        padding: EdgeInsets.only(left: 100, top: 65),
        child: Column(
          children: <Widget>[
            Text('你好，吴彦祖'),
            Text('188****8888'),
          ],
        ),
      ),
      Padding(
        padding: EdgeInsets.only(
            top: ScreenUtil().setHeight(330),
            left: 15,
            right: 15),
        child: Container(
          height: 80,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(5),
          ),
          child: _topItems(viewService.context),
        ),
      ),
      Padding(
        padding: EdgeInsets.only(
            left: 15,
            right: 15,
            top: ScreenUtil().setHeight(530)),
        child: Container(
          height: 150,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(5),
          ),
          child: Padding(
            padding: EdgeInsets.all(5),
            child: _items(viewService.context),
          ),
        ),
      ),
      Padding(
        padding: EdgeInsets.only(top: 34, left: ScreenUtil.screenWidthDp - 50),
        child: Badge(
          badgeColor: Colors.blue,
          badgeContent: Text('1'),
          animationType: BadgeAnimationType.scale,
          child: GestureDetector(
            onTap: () {
            },
            child: Icon(
              Icons.notifications_none,
              color: Colors.black,
            ),
          ),
        ),
      ),
      Padding(
        padding: EdgeInsets.only(top: 78, left: ll),
        child: Stack(
          children: <Widget>[
            Image(
              image: AssetImage('images/me_btn_back.png'),
              width: 107,
              height: 30,
            ),
            Padding(
              padding: EdgeInsets.only(left: 20, top: 7),
              child: Text(
                '完善信息',
                style: TextStyle(fontSize: 13),
              ),
            )
          ],
        ),
      ),
    ],
  );
}
_topItems(BuildContext context) {
  return Padding(
    padding: EdgeInsets.only(top: 20, left: 20, right: 20),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Column(
          children: <Widget>[
            Text('--.--'),
            Padding(
              padding: EdgeInsets.only(top: 10),
              child: Text('已消费金额'),
            )
          ],
        ),
        Column(
          children: <Widget>[
            Text('--.--'),
            Padding(
              padding: EdgeInsets.only(top: 10),
              child: Text('VIP剩余金额'),
            )
          ],
        ),
        GestureDetector(
          onTap: () {},
          child: Column(
            children: <Widget>[
              Image(
                image: AssetImage('images/me_zhangdan.png'),
                height: 23,
                width: 26,
              ),
              Padding(
                padding: EdgeInsets.only(top: 5),
                child: Text(
                  '我的账单',
                  style: TextStyle(
                      fontSize: 13, color: Color(int.parse('0xff333333'))),
                ),
              )
            ],
          ),
        ),
      ],
    ),
  );
}

_items(BuildContext context) {
  List itemsDic = [
    {'title': '我的寄养', 'icon': 'images/me_baodan.png', 'page': ''},
    {'title': '我的订单', 'icon': 'images/me_dingdan.png', 'page': ''},
    {'title': '我的资料', 'icon': 'images/me_ziliao.png', 'page': ''},
    {'title': '我的VIP', 'icon': 'images/me_bank.png', 'page': ''},
    {'title': '安全设置', 'icon': 'images/me_setting.png', 'page': ''},
    {
      'title': '常见问题',
      'icon': 'images/me_question.png',
      'page': ''
    },
    {'title': '意见反馈', 'icon': 'images/me_yijian.png', 'page': ''},
    {'title': '', 'icon': '', 'page': ''},
  ];
  List<Widget> items = [];
  itemsDic.forEach((dict) {
    items.add(_item(context, dict));
  });

  return Column(
    children: <Widget>[
      Padding(
        padding: EdgeInsets.only(top: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: items.sublist(0, 4),
        ),
      ),
      Padding(
        padding: EdgeInsets.only(top: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: items.sublist(4, itemsDic.length),
        ),
      ),
    ],
  );
}

Widget _item(BuildContext context, Map dict) {
  return Expanded(
    flex: 1,
    child: GestureDetector(
      onTap: () {
        if (dict['page'] != null) {
        }
      },
      child: Column(
        children: <Widget>[
          Image(
            image: dict['icon'] != null ? AssetImage(dict['icon']) : null,
            height: 23,
            width: 26,
          ),
          Padding(
            padding: EdgeInsets.only(top: 5),
            child: Text(
              dict['title'].toString().length != null ? dict['title'] : '',
              style: TextStyle(
                  fontSize: 13, color: Color(int.parse('0xff333333'))),
            ),
          )
        ],
      ),
    ),
  );
}