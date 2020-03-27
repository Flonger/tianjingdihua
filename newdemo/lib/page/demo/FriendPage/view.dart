import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_easyrefresh/bezier_bounce_footer.dart';
import 'package:flutter_easyrefresh/bezier_hour_glass_header.dart';
import 'package:flutter_easyrefresh/easy_refresh.dart';
import 'package:newdemo/apiModel/pet.dart';
import 'package:responsive_grid/responsive_grid.dart';

import 'action.dart';
import 'state.dart';

Widget buildView(FriendPageState state, Dispatch dispatch, ViewService viewService) {
  return EasyRefresh(
    header: BezierHourGlassHeader(
        color: Colors.black87,
        backgroundColor: Colors.grey
    ),
    footer: BezierBounceFooter(
      color: Theme.of(viewService.context).scaffoldBackgroundColor,
    ),
    onRefresh: () async {
      await Future.delayed(Duration(seconds: 2), () {

      });
    },
    onLoad: () async {
      await Future.delayed(Duration(seconds: 2), () {
      });
    },
    child: GridView.builder(
        itemCount: viewService.buildAdapter().itemCount,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          //横轴元素个数
            crossAxisCount: 2,
            //纵轴间距
            mainAxisSpacing: 10.0,
            //横轴间距
            crossAxisSpacing: 10.0,
            //子组件宽高长度比例
            childAspectRatio: 0.75),
        itemBuilder: viewService.buildAdapter().itemBuilder),

  );
}






