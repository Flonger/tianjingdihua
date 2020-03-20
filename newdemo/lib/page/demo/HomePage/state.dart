import 'package:fish_redux/fish_redux.dart';

class homepageState implements Cloneable<homepageState> {
  String title = '';
  String topImage = '';
  int numofpeople = 0;
  String phone = '';
  String desc = '';
  String address = '';
  double lon = 0.0;
  double lat = 0.0;

  @override
  homepageState clone() {
    return homepageState();
  }
}

homepageState initState(Map<String, dynamic> args) {
  return homepageState();
}
