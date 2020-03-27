import 'package:fish_redux/fish_redux.dart';
import 'package:newdemo/apiModel/pet.dart';

class FriendDetailState implements Cloneable<FriendDetailState> {
  String id = '';
  String name = '';
  String image = '';
  Pet pet;
  @override
  FriendDetailState clone() {
    return FriendDetailState()..pet = pet;
  }
}

FriendDetailState initState(Map<String, dynamic> args) {
  println(args);
  Pet pet = args['pet'];
  var friendDetailState = FriendDetailState();
  friendDetailState..id = pet.id;
  friendDetailState..name = pet.name;
  friendDetailState..image = pet.image;
  friendDetailState.pet = pet;
  return friendDetailState;
}
