import 'package:fish_redux/fish_redux.dart';
import 'package:newdemo/apiModel/banner.dart';

import 'action.dart';
import 'state.dart';

Reducer<homepageState> buildReducer() {
  return asReducer(
    <Object, Reducer<homepageState>>{
      homepageAction.action: _onAction,
      homepageAction.getInfo: _getInfo,
    },
  );
}

homepageState _onAction(homepageState state, Action action) {
  final homepageState newState = state.clone();
  return newState;
}
homepageState _getInfo(homepageState state, Action action) {
  println(action.payload);
  final homepageState newState = state.clone();
  newState.title = action.payload['title'];
  newState.topImage = action.payload['topImage'];
  newState.phone = action.payload['phone'];
  newState.desc = action.payload['desc'];
  newState.numofpeople = action.payload['numofpeople'];
  newState.address = action.payload['location']['address'];
  List<Banner> banners = (action.payload['banners'] as List).map((i)=>Banner.fromJson(i)).toList();
  newState.banners = banners;

  return newState;
}
