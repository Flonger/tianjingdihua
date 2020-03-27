import 'dart:async';

import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyrefresh/bezier_bounce_footer.dart';
import 'package:flutter_easyrefresh/bezier_hour_glass_header.dart';
import 'package:flutter_easyrefresh/easy_refresh.dart';

import 'action.dart';
import 'state.dart';

Widget buildView(BusinessState state, Dispatch dispatch, ViewService viewService) {
  // 总数
  int _count = 20;
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
            _count = 20;
          });
        },
        onLoad: () async {
          await Future.delayed(Duration(seconds: 2), () {
            _count += 20;
          });
        },
        child: ListView.builder(
            itemBuilder: viewService.buildAdapter().itemBuilder,
            itemCount: viewService.buildAdapter().itemCount,
          ),
    );
}