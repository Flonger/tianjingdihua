import 'package:fish_redux/fish_redux.dart';

//TODO replace with your own action
enum VideoDetailAction { action }

class VideoDetailActionCreator {
  static Action onAction() {
    return const Action(VideoDetailAction.action);
  }
}
