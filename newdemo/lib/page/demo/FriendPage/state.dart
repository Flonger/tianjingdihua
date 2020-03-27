import 'package:fish_redux/fish_redux.dart';
import 'package:newdemo/apiModel/pet.dart';
import 'package:newdemo/page/demo/FriendPage/FriendItem/state.dart';
import 'package:newdemo/page/demo/FriendPage/adapter.dart';

class FriendPageState  extends MutableSource implements Cloneable<FriendPageState> {

  FriendPageState({this.petList,this.pets});

  List<Pet> pets = new List<Pet>();
  List<FriendItemState> petList = new List<FriendItemState>();
  @override
  FriendPageState clone() {
    return FriendPageState();
  }

  @override
  Object getItemData(int index) => petList[index];

  @override
  String getItemType(int index) => FriendAdapter.friendType;

  @override
  int get itemCount => petList?.length ?? 0;

  @override
  void setItemData(int index, Object data) => petList[index] = data;

}

FriendPageState initState(Map<String, dynamic> args) {
  List<FriendItemState> tempList = new List<FriendItemState>();
  List<Pet> pets = new List<Pet>();
  return FriendPageState(petList: tempList,pets: pets);
}
