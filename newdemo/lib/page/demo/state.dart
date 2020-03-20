import 'package:fish_redux/fish_redux.dart';

class DemoState implements Cloneable<DemoState> {

  int selectedIndex = 0;
  String naviName = '宠物乐园';
  @override
  DemoState clone() {
    return DemoState();
  }
}

DemoState initState(Map<String, dynamic> args) {
  return DemoState();
}