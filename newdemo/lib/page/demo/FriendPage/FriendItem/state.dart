import 'package:fish_redux/fish_redux.dart';

class FriendItemState implements Cloneable<FriendItemState> {
  String id;
  String image;
  String video;
  String name;
  String age;
  int sex;
  String desc;

  FriendItemState({this.id,this.image,this.video,this.name,this.age,this.sex,this.desc});

  @override
  FriendItemState clone() {
    return FriendItemState()
    ..id = id
    ..image = image
    ..video = video
    ..name = name
    ..age = age
    ..sex = sex
    ..desc = desc;
  }
}

FriendItemState initState(Map<String, dynamic> args) {
  return FriendItemState();
}
