import 'package:fish_redux/fish_redux.dart';
import 'package:newdemo/api/friend.dart';
import 'package:newdemo/apiModel/pet.dart';
import 'package:newdemo/page/demo/FriendPage/FriendItem/state.dart';
import 'action.dart';
import 'state.dart';
import '../route.dart';
Effect<FriendPageState> buildEffect() {
  return combineEffects(<Object, Effect<FriendPageState>>{
    Lifecycle.initState: _init,
    FriendPageAction.action: _onAction,
    FriendPageAction.toDetail: _toDetail,
  });
}

void _onAction(Action action, Context<FriendPageState> ctx) {
}
void _toDetail(Action action, Context<FriendPageState> ctx) {
  appPushRoute('friendDetail', ctx.context,
      params: {"title": '1', "name": '2',"pet": action.payload});
}
void _init(Action action, Context<FriendPageState> ctx) {
  FriendApi.getList().then((value){
//    ctx.dispatch(FriendPageActionCreator.getList(value));
      _loadFItems(action, ctx, value);
  });
}
void _loadFItems(Action action, Context<FriendPageState> ctx, List arr) {
  var FItems = List.generate(arr.length, (index) {
    Pet pet = arr[index];
    return _generateItemState(ctx, pet);
  });
  ctx.dispatch(FriendPageActionCreator.onLoadFItems(FItems));
}


FriendItemState _generateItemState(Context<FriendPageState> ctx, Pet pet) => FriendItemState(
  id: pet.id,
  image: pet.image,
  video: pet.video,
  name: pet.name,
  age: pet.age,
  sex: pet.sex,
  desc: pet.desc,
);