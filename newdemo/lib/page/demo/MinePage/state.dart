import 'package:fish_redux/fish_redux.dart';

class MinePageState implements Cloneable<MinePageState> {

  int index = 0;

  @override
  MinePageState clone() {
    return MinePageState();
  }
}

MinePageState initState(Map<String, dynamic> args) {
  return MinePageState();
}
