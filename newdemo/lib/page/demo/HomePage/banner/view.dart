import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';
import 'package:flutter_banner_swiper/flutter_banner_swiper.dart';

import 'action.dart';
import 'state.dart';

Widget buildView(BannerState state, Dispatch dispatch, ViewService viewService) {
  return BannerSwiper(
    //width  和 height 是图片的高宽比  不用传具体的高宽   必传
    height: 3,
    width: 2,
    spaceMode: false,
    //轮播图数目 必传
    length: state.banners!=null?state.banners.length:0,
    //轮播的item  widget 必传
    getwidget: (index) {
      return new GestureDetector(
          child:  Image.network(state.banners[index % state.banners.length].image,fit: BoxFit.cover,),
          onTap: () {
            //点击后todo
            dispatch(BannerActionCreator.bannerClick(state.banners[index % state.banners.length]));
          });
    },
  );
}
