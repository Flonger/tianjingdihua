import 'package:fish_redux/fish_redux.dart';

class homepageState implements Cloneable<homepageState> {

  @override
  homepageState clone() {
    return homepageState();
  }
}

homepageState initState(Map<String, dynamic> args) {
  return homepageState();
}
