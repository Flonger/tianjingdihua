import 'package:fish_redux/fish_redux.dart';

class StorePageState implements Cloneable<StorePageState> {
  String itemID = '';
  @override
  StorePageState clone() {
    return StorePageState();
  }
}

StorePageState initState(Map<String, dynamic> args) {
  return StorePageState()..itemID = args['index'];
}
