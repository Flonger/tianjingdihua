import 'package:fish_redux/fish_redux.dart';
import 'package:newdemo/apiModel/pet.dart';

class FriendPageState implements Cloneable<FriendPageState> {

  FriendPageState({this.petList});

  List<Pet> petList = new List<Pet>();
  @override
  FriendPageState clone() {
    return FriendPageState();
  }
}

FriendPageState initState(Map<String, dynamic> args) {
  List<Pet> tempList = new List<Pet>();
  return FriendPageState(petList: tempList);
}
