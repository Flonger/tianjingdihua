
import 'package:fish_redux/fish_redux.dart';
import 'package:newdemo/page/demo/FriendPage/FriendItem/component.dart';
import 'package:newdemo/page/demo/FriendPage/state.dart';

class FriendAdapter extends SourceFlowAdapter<FriendPageState>{
  static const friendType = 'pet';

  FriendAdapter() : super(pool:<String, Component<Object>>{
    friendType:FriendItemComponent(),
  });
}