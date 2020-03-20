import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';
import 'package:newdemo/page/demo/FriendPage/page.dart';

import 'BusinessPage/page.dart';
import 'HomePage/page.dart';
import 'MinePage/page.dart';
import 'StorePage/page.dart';
import 'VideoPage/page.dart';
import 'action.dart';
import 'state.dart';

import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:line_icons/line_icons.dart';


Widget buildView(DemoState state, Dispatch dispatch, ViewService viewService) {
  const TextStyle optionStyle =
  TextStyle(fontSize: 20, fontWeight: FontWeight.bold);

  List<Widget> _widgetOptions = <Widget>[
    homepagePage().buildPage(null),
    BusinessPage().buildPage(null),
    FriendPagePage().buildPage(null),
    VideoPagePage().buildPage(null),
    MinePagePage().buildPage(null),

  ];

  return Scaffold(
      appBar: AppBar(
        title: Text(state.naviName),
        backgroundColor: Colors.black87,
      ),
      body: Center(
        child: _widgetOptions.elementAt(state.selectedIndex),
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(color: Colors.white, boxShadow: [
          BoxShadow(blurRadius: 20, color: Colors.black.withOpacity(.1))
            ]),
        child: SafeArea(
          child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8),
              child: GNav(
                      gap: 8,
                      activeColor: Colors.white,
                      iconSize: 20,
                      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                      duration: Duration(milliseconds: 400),
                      tabBackgroundColor: Colors.grey[800],
                      tabs: [
                          GButton(
                          icon: LineIcons.home,
                          text: '关于我们',
                          ),
                          GButton(
                          icon: LineIcons.shopping_cart,
                          text: '爱宠用品',
                          ),
                          GButton(
                          icon: LineIcons.heart_o,
                          text: '爱宠交友',
                          ),
                          GButton(
                          icon: LineIcons.video_camera,
                          text: '爱宠生活',
                          ),
                          GButton(
                          icon: LineIcons.user,
                          text: '我的',
                          ),
                      ],
          selectedIndex: state.selectedIndex,
          onTabChange: (index) {
          dispatch(DemoActionCreator.onAction(index));
  }),
  ),
  ),
  ),

//      bottomNavigationBar: BottomNavigationBar(
//        items: const <BottomNavigationBarItem>[
//          BottomNavigationBarItem(
//            icon: Icon(Icons.home),
//            title: Text('首页'),
//          ),
//          BottomNavigationBarItem(
//            icon: Icon(Icons.business),
//            title: Text('商城'),
//          ),
//          BottomNavigationBarItem(
//            icon: Icon(Icons.business),
//            title: Text('视频'),
//          ),
//          BottomNavigationBarItem(
//            icon: Icon(Icons.school),
//            title: Text('我的'),
//          ),
//        ],
//        currentIndex: state.selectedIndex,
//        selectedItemColor: Colors.amber[800],
//        onTap: (currentIndex) {
//          dispatch(DemoActionCreator.onAction(currentIndex));
//        },
//      ));
  );
}